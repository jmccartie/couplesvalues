class ResultsController < ApplicationController

  def show
    session[:compare_to] = params[:compare_to] if params[:compare_to].present?
    @result = Result.find(params[:id])
    @compare_to = Result.find_by(id: session[:compare_to])
  end

  def create
    @result = Result.new(result_params)

    # convert all values to integers
    data = {}
    Hash[result_params[:data].each { |k,v| data[k] = v.to_i }]

    @result.data = data
    @result.save!

    redirect_to @result, notice: "Created!"
  end


  private
  def result_params
    params.require(:result).permit(:name, :data => {})
  end

end