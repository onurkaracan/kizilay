class CreateBloodTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :blood_types do |t|
      t.string :type_name

      t.timestamps
    end
  end
end
