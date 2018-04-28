class HomesController < ApplicationController
  layout 'pages'

  def index
    @signed_in = session[:player_id]
  end


  def register
    @player = Player.new
  end

  def new_register
    @player = Player.create(register_params)
    session[:player_name] = params[:form_register][:name]
    if @player.save
        session[:player_id] = @player.id
        redirect_to questionnaire_path
    else
        render 'register'
    end

  end

  def logout
    session.delete(:count_youdo)
    session.delete(:player_name)
    session.delete(:player_id)
    redirect_to homes_path
  end

  def questionnaire

    #Question.where(:id => start..stop).order('order ASC').select(:name)
    if !session[:count_youdo]
      session[:count_youdo] = 1
      @subheader = "ก่อนการเยี่ยมชม"
      @question = Question.where(:id => 1..3).order(:order)
    elsif session[:count_youdo] == 1
      session[:count_youdo] = 2
      @subheader = "หลังการเยี่ยมชม"
      @question = Question.where(:id => 4..8).order(:order)
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
        :user_id => session[:player_id],
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
      def register_params
          params.require(:form_register).permit(:name,:phone,:occupation)
      end

end
