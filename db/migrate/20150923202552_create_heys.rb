class CreateHeys < ActiveRecord::Migration
  def change
    create_table :heys do |t|
      t.string :body
      t.belongs_to :sayer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
