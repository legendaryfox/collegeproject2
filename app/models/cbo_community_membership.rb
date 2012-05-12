class CboCommunityMembership < ActiveRecord::Base
  belongs_to :cbo, :class_name => "Cbo"
  belongs_to :community, :class_name => "Community"
end
# == Schema Information
#
# Table name: cbo_community_memberships
#
#  id           :integer         not null, primary key
#  cbo_id       :integer
#  community_id :integer
#  created_at   :datetime
#  updated_at   :datetime
#

