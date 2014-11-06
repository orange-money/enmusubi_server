class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users, :id=>false do |t|
      t.string :name, :null => false
      t.string :username, :null => false
      t.string :link, :null => false
      t.string :univ
      t.column :user_id, "int(11) PRIMARY KEY", :null => false
      
      t.timestamps
    end
  end
end
