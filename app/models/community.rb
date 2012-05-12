class Community < ActiveRecord::Base
  
  attr_accessible :name, :description
  
  has_many :student_community_memberships
  has_many :students, :through => :student_community_memberships, :source => :student
  
  has_many :cbo_community_memberships
  has_many :cbos, :through => :cbo_communit_memberships, :source => :cbo
  
  
end
# == Schema Information
#
# Table name: communities
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

