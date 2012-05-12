class StudentCommunityMembership < ActiveRecord::Base
  belongs_to :student, :class_name => "Student"
  belongs_to :community, :class_name => "Community"
end
# == Schema Information
#
# Table name: student_community_memberships
#
#  id           :integer         not null, primary key
#  student_id   :integer
#  community_id :integer
#  created_at   :datetime
#  updated_at   :datetime
#

