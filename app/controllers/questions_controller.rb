class QuestionsController < ApplicationController

  before_filter :authorize, only: [:edit, :update, :new, :create, :destroy]

  def index
    @questions = Question.all
  end
end
