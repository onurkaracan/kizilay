class CreateRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :requests do |t|
      t.string :email
      t.string :reason
      t.references :requester, null: false, foreign_key: true
      t.references :blood_type, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true
      t.references :town, null: false, foreign_key: true
      t.integer :number_of_units
      t.integer :duration_of_search
      t.references :branch, null: false, foreign_key: true

      t.timestamps
    end
  end
end
