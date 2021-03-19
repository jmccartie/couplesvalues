class ExerciseController < ApplicationController

  def index
    session[:compare_to] = params[:compare_to]
  end

end
