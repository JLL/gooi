class TaggingsController < ApplicationController

  def index
    @words = Word.order("id desc").paginate(:page => params[:page], :per_page => 10)
  end
  
  def massive_update
    words_id = params[:word].map { |key, value| key if value }
    words = Word.find(words_id)
    
    if params[:commit] == "Add"
      words.each do |word|
        unless word.tag_list.include? params[:tag]
          word.tag_list << params[:tag]
          word.save!
        end
      end
    elsif params[:commit] == "Remove"
      words.each do |word|
        if word.tag_list.include? params[:tag]
          word.tag_list.delete params[:tag]
          word.save!
        end
      end
    end
    
    redirect_to :taggings
  end
end
