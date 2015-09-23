class CreateSayers < ActiveRecord::Migration
  def change
    create_table :sayers do |t|
      t.string :handle, null: false

      t.timestamps null: false
    end
  end
end
