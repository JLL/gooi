class AddMetrics < ActiveRecord::Migration
  def self.up
    add_column :users, :title, :string
    add_column :users, :studies_count, :integer
    add_column :users, :learned_words_count, :integer
    add_column :users, :forgotten_words_count, :integer
    
    add_column :studies, :learned_words_count, :integer
    add_column :studies, :forgotten_words_count, :integer
    add_column :studies, :learned_words_ids, :text
    add_column :studies, :forgotten_words_ids, :text
    remove_column :studies, :result
    remove_column :studies, :results
  end

  def self.down
    remove_column :users, :title
    remove_column :users, :studies_count
    remove_column :users, :learned_words_count
    remove_column :users, :forgotten_words_count
    
    remove_column :studies, :learned_words_count
    remove_column :studies, :forgotten_words_count
    remove_column :studies, :learned_words_ids
    remove_column :studies, :forgotten_words_ids
    add_column :studies, :result, :integer
    add_column :studies, :results, :text
  end
end
