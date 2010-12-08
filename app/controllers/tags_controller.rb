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
end
