class CreateCboCommunityMemberships < ActiveRecord::Migration
  def change
    create_table :cbo_community_memberships do |t|
      t.integer :cbo_id
      t.integer :community_id

      t.timestamps
    end
  end
end
