class AddVotesToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :votes, :integer, :default => 0
  end
end
