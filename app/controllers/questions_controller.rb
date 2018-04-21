class QuestionsController < ApplicationController
    def index
        #@question = QuestionAnswer.select('question_answers.*,questions.name AS question_name').joins(:question)
        @question = Question.all
    end


    def new
        @question = Question.new
    end
    def create
        @question = Question.create(question_params)
        if @question.save
            redirect_to questions_path,notice: "#{@question.title} has been save."
        else
            render 'new'
        end
    end

    def edit
        @question = Question.find( params[:id] )
    end

    def update
        @question = Question.find( params[:id] )
        if @question.update(question_params)
          redirect_to questions_path,notice: "#{@question.title} has been save."
        else
          render 'edit'
        end
    end

    def destroy
        @question = Question.find( params[:id] )
        @question.destroy
        redirect_to action: 'index'
    end

    def show
        @question = Question.find(params[:id])
        @answer = QuestionAnswer.where("question_answers.question_id like ?", "%#{params[:id]}%").select('question_answers.*,questions.*,answers.*').joins(:question,:answer)
        #@question = QuestionAnswer.select('question_answers.*,questions.*,answers.*').joins(:question,:answer).where("question_id like ?", "%#{params[:id]}%")
    end

    private
        def question_params
            params.require(:question).permit(:name)
        end

end
