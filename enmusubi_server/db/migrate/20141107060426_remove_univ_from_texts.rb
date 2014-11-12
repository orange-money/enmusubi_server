class RemoveUnivFromTexts < ActiveRecord::Migration
  def change
    remove_column :texts, :univ, :string
  end
end
