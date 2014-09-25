class AnswersController < ApplicationController

  before_filter :authorize, only: [:new, :create, :destroy, :edit, :update]


  def index
    @answers = Answers.all
    @users = User.all
  end

  def new
    @answer = Answer.new
    @question = Question.find_by_id(params[:question_id])
  end

  def create
    @question = Question.find_by_id(params[:question_id])
    @answer = Answer.create(answer_params)
    respond_to do |format|
      format.html { redirect_to root_url }
      format.js
    end
  end

  def destroy
    @answer = Answer.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to question_path(@question) }
      format.js
    end
  end


  private

  def answer_params
    params.require(:answer).permit(:description).merge(question_id: @question.id, user_id: current_user.id)
  end
end
