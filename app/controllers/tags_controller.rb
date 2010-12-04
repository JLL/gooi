class TagsController < ApplicationController
  
  def index
    @tag = Tag.new
    @tags = Tag.order("id desc")
  end
  
  def create
    @tag = Tag.new(params[:tag])
    @tag.save!
    redirect_to :tags
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy unless @tag.nil?
    redirect_to :tags
  end
  
  def show
    @word = Word.new
    @words = Word.tagged_with(params[:id]).order("id desc").paginate(:page => params[:page], :per_page => 10)
  end
end
