class CreateImages < ActiveRecord::Migration
  def change
      create_table :images, :id=>false do |t|
      t.string :file_name, :null => false
      t.column :textinfo_id, "int(11) PRIMARY KEY", :null => false
      t.timestamps
    end
  end
end
