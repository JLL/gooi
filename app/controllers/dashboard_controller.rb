class DashboardController < ApplicationController
  def index
    @tags = Word.tag_counts_on(:tags)
  end
end