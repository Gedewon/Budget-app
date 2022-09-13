class AddTransferceRefToCategories < ActiveRecord::Migration[7.0]
  def change
    add_reference :categories, :transferce, null: false, foreign_key: true
  end
end
