class Word < ActiveRecord::Base
  acts_as_taggable
  
  validates_uniqueness_of :name
end
