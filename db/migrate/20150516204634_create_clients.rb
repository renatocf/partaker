class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :username
      t.string :email
      t.string :name
      t.string :password
      t.string :photo
      t.string :location

      t.timestamps null: false
    end
    add_index :clients, :username, unique: true
    add_index :clients, :email, unique: true
  end
end
