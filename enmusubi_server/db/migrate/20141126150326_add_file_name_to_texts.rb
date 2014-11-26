class AddFileNameToTexts < ActiveRecord::Migration
  def change
    add_column :texts, :file_name, :string
  end
end
