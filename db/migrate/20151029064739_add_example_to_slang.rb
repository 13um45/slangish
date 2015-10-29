class AddExampleToSlang < ActiveRecord::Migration
  def change
    add_column :slangs, :example, :text
  end
end
