require 'smarter_csv'

class CsvImporter
  def self.import(file, model)
    @logger ||= Logger.new(STDOUT)
    SmarterCSV.process(file).each do |object_data|
      @instance = model.new(object_data)
      if @instance.save
        @logger.info "#{@instance.id} was successfully saved."
      else
        @policy.errors.full_messages.each { |msg| @logger.warning msg }
      end
    end
  end
end
