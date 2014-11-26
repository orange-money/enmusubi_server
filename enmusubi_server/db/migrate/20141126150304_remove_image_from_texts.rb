class RemoveImageFromTexts < ActiveRecord::Migration
  def change
    remove_column :texts, :image, :integer
  end
end
