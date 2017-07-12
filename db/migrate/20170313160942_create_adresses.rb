class CreateAdresses < ActiveRecord::Migration[5.0]
  def change
    create_table :adresses do |t|
      t.string :street
      t.string :city
      t.references :contact, foreign_key: true

      t.timestamps
    end
  end
end
