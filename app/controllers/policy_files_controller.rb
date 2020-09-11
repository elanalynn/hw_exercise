class PolicyFilesController < ApplicationController
  def index 
  end

  def show 
  end

  def new
    @policy_file = PolicyFile.new
  end

  def create
    @policy_file = PolicyFile.new(policy_file_params)
    respond_to do |format|
      if @policy_file.save
        format.html { redirect_to @policy_file, notice: 'PolicyFile was successfully created.' }
        format.json { render :show, status: :created, location: @policy_file }
      else
        format.html { render :new }
        format.json { render json: @policy_file.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def policy_file_params
    params.require(:policy_file).permit(:name, :data)
  end
end
