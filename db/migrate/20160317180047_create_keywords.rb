class CreateKeywords < ActiveRecord::Migration
  def change
    create_table :keywords do |t|
      t.string :value
      t.timestamps null: false
    end
  end
end
