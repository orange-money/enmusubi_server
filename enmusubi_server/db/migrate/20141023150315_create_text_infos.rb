class CreateTextInfos < ActiveRecord::Migration
  def change
    create_table :text_infos, :primary_key => 'textinfo_id' do |t|
      t.integer :user_id, :null => false
      t.string :lecture_name, :null => false
      t.string :textbook_name, :null => false
      t.integer :price, :null => false
      t.string :comment
      t.binary :image, :limit => 1.megabyte
      t.integer :status

      t.timestamps
    end
  end
end
