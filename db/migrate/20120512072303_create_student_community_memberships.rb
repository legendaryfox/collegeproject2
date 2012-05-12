class CreateStudentCommunityMemberships < ActiveRecord::Migration
  def change
    create_table :student_community_memberships do |t|
      t.integer :student_id
      t.integer :community_id

      t.timestamps
    end
  end
end
