class CreateSlangs < ActiveRecord::Migration
  def change
    create_table :slangs do |t|
      t.string :word
      t.text :definition

      t.timestamps null: false
    end
  end
end
