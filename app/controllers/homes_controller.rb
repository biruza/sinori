class HomesController < ApplicationController
  layout 'pages'

  def index
  end


  def questionnaire

    #Question.where(:id => start..stop).order('order ASC').select(:name)
    if !session[:count_youdo]
      session[:count_youdo] = 1
      @subheader = "ก่อนการเยี่ยมชม"
      @question = Question.where(:id => 1..3)
    elsif session[:count_youdo] == 1
      session[:count_youdo] = 2
      @subheader = "หลังการเยี่ยมชม"
      @question = Question.where(:id => 4..8)
    else
      session.delete(:count_youdo)
      redirect_to finish2_path
    end

    #@answer = Answer.all
    #@qa = QuestionAnswer.all

  end

  def new_questionnaire




    params[:form_questionnaire]["choice"].each do |q|
      question_id = params[:form_questionnaire][:question_id][q]
      answer_id = params[:form_questionnaire][:choice][q]
      value = params[:form_questionnaire][:choice][q]
      q_item = QItem.new(
        :user_id => current_user.id,
        :answer_id => answer_id,
        :question_id => question_id,
        :value => value
        )
      q_item.save
    end


    #render 'test_params'

    if session[:count_youdo] == 1
      redirect_to finish_path
    else
      session.delete(:count_youdo)
      redirect_to finish2_path
    end

  end

  def test_params
  end

  private
      def q_item_params
          params.require(:form_questionnaire).permit(:value[:id, :options_attributes[:id]])
      end

end
