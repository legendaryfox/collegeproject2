class CboCommunityMembership < ActiveRecord::Base
  belongs_to :cbo, :class_name => "Cbo"
  belongs_to :community, :class_name => "Community"
end
