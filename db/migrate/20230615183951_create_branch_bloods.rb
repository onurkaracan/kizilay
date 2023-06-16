class CreateBranchBloods < ActiveRecord::Migration[7.0]
  def change
    create_table :branch_bloods do |t|
      t.integer :number_of_unit
      t.references :branch, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true
      t.references :blood_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
