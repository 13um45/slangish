class AddPronunciationToSlang < ActiveRecord::Migration
  def change
    add_column :slangs, :pronunciation, :string
  end
end
