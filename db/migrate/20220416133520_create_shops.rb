class CreateShops < ActiveRecord::Migration[7.0]
  def change
    create_table :shops do |t|
      t.string :corporate_name
      t.string :cnpj
      t.string :address
      t.string :city
      t.string :state
      t.string :manager

      t.timestamps
    end
  end
end
