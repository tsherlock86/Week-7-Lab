class AddPinIdToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :pin_id, :integer
  end
end
