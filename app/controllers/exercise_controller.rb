class ExerciseController < ApplicationController
  def index
  end

  def create
    @result = Result.new

    # convert all values to integers
    data = {}
    Hash[result_params[:data].each { |k,v| data[k] = v.to_i }]

    @result.data = data
    @result.save!

    redirect_to @result, notice: "Created!"
  end


  private
  def result_params
    params.require(:result).permit(:data => {})
  end
end
