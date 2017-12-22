class RemoveVotesColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :votes
  end
end
