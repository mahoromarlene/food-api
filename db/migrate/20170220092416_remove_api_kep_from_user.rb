class RemoveApiKepFromUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :api_kep, :string
  end
end