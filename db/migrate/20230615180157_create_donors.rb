class CreateDonors < ActiveRecord::Migration[7.0]
  def change
    create_table :donors do |t|
      t.string :donor_name
      t.references :blood_type, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true
      t.references :town, null: false, foreign_key: true
      t.string :phone_number
      t.string :photo
      t.references :branch, null: false, foreign_key: true

      t.timestamps
    end
  end
end
