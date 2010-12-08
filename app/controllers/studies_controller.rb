class StudiesController < ApplicationController
  def show
    @tag = Tag.where(:name => params[:id]).first
    @words = Word.tagged_with(@tag.name)
    @studies = Study.where("tag_id = ? and user_id = ?", @tag.id, current_user.uid).limit(10)
    @last_missed_words = []
    
    unless @studies.empty?
      last_missed_word_ids = @studies.last.results.split(",")
      @last_missed_words = @words.select { |word| last_missed_word_ids.include?(word.id.to_s) }
    end
  end
  
  def create
  end
end
