class CreateLengths < ActiveRecord::Migration
  def change
    create_table :lengths do |t|
      t.string :value
      t.string :keytype
      t.timestamps null: false
    end
  end
end
