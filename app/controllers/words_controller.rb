class WordsController < ApplicationController
  
  def index
    @word = Word.new
    @words = Word.order("id desc").paginate(:page => params[:page], :per_page => 10)
  end
  
  def create
    @word = Word.new(params[:word])
    @word.save!
    redirect_to :words
  end
  
  def destroy
    @word = Word.find(params[:id])
    @word.destroy unless @word.nil?
    redirect_to :words
  end
end
