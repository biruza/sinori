class QuestionAnswersController < ApplicationController
  def show
      @questionAnswer = QuestionAnswer.find( params[:id] )
      @questionAnswer.destroy
      redirect_to questions_path
  end
end
