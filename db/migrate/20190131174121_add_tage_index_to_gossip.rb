class AddTageIndexToGossip < ActiveRecord::Migration[5.2]
  def change
  	add_reference :join_tag_to_gossips, :tag, foreign_key: true
  	add_reference :join_tag_to_gossips, :gossip, foreign_key: true
  end
end
