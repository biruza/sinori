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
    else
      @subheader = "หลังการเยี่ยมชม"
      @question = Question.where(:id => 4..8)
    end

    #@answer = Answer.all
    #@qa = QuestionAnswer.all

  end

  def new_questionnaire

    #if self.success == true
      @start = 0
      while @start < Question.count
        @start += 1
        q = "q"+@start.to_s
        question_id = params[:form_questionnaire][:question_id][q]
        answer_id = params[:form_questionnaire][:choice][q]
        q_item = QItem.new(
          :user_id => current_user.id,
          :answer_id => answer_id,
          :question_id => question_id
          )
        q_item.save
      end
    #end

    redirect_to finish_path

  end

  private
      def q_item_params
          params.require(:form_questionnaire).permit(:value[:id, :options_attributes[:id]])
      end

end
