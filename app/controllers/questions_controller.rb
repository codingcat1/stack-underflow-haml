class QuestionsController < ApplicationController

  before_filter :authorize, only: [:edit, :update, :new, :create, :destroy]

  def index
    @questions = Question.all
    @users = User.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.create(question_params)
    respond_to do |format|
      format.html { redirect_to root_url }
      format.js
    # else
    #   render 'create', alert: "Please enter a valid question."
    end
  end

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers.all
    @answer = Answer.new
  end

  def destroy
    @question = Question.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to root_url }
      format.js
    end
  end

  private

  def question_params
    params.require(:question).permit(:description).merge(user_id: current_user.id)
  end
end
