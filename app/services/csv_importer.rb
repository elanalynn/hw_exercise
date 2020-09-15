# frozen_string_literal: true

require 'smarter_csv'

class CsvImporter
  def self.import(file_name, model)
    @logger ||= Logger.new(STDOUT)
    file_path = ActiveStorage::Blob.service.path_for(file_name)
    SmarterCSV.process(file_path).each do |object_data|
      @instance = model.new(object_data)
      @instance.update_attribute(:complete, true) if @instance.valid?
      if @instance.save(validate: false)
        @logger.info "#{@instance.id} was successfully saved."
      else
        @instance.errors.full_messages.each { |msg| @logger.error msg }
      end
    end
  end
end
