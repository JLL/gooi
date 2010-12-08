class DashboardController < ApplicationController
  def index
  end
  
  def cloud
    @tags = Word.tag_counts_on(:tags)
  end
end