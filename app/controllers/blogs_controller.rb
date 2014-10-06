class BlogsController < ApplicationController

before_filter :authorize, except: [:index, :show]

  def index
    @blogs = Blog.all
  end

  def show
    @blogs = Blog.all
    @blog = Blog.find(params[:id])
  end
end
