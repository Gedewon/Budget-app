class CreateTransferces < ActiveRecord::Migration[7.0]
  def change
    create_table :transferces do |t|
      t.string :name
      t.decimal :amount
      t.references :user, null:false , foreign_key:true
      t.references :categorie , null:false ,foreign_key: true
      t.timestamps
    end
  end
end
