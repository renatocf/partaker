class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.references :client

      t.string :description

      t.timestamps null: false
    end
  end
end
