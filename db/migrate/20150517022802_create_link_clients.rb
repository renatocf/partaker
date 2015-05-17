class CreateLinkClients < ActiveRecord::Migration
  def change
    create_table :link_clients do |t|
      t.references :client, :null => false
      t.references :link, :null => false
    end
  end
end
