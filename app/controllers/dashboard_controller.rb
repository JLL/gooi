class DashboardController < ApplicationController
  def index
    redirect_to cloud_path if current_user
  end
  
  def cloud
    @tags = Word.tag_counts_on(:tags)
  end
end