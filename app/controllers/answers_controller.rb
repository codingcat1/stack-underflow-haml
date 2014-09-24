class AnswersController < ApplicationController


  def index
    @answers = Answers.all
    @users = User.all
  end

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.create(answer_params)
    respond_to do |format|
      format.html { redirect_to root_url }
      format.js
    end
  end

  private

  def answer_params
    params.require(:question).permit(:description).merge(user_id: current_user.id)
  end
end
