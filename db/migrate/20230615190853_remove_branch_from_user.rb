class RemoveBranchFromUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :branch, :string
  end
end
