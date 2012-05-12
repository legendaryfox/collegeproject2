class Cbo < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :name, :description
  
  has_many :cbo_community_memberships
  has_many :communities, :through => :cbo_community_memberships, :source => :community
  
  def part_of_community?(community)
    return self.cbo_community_memberships.find_by_community_id(community)
  end
  
  def join_community(community)
    if !self.part_of_community?(community)
      self.cbo_community_memberships.create(:community_id => community.id)
    end
  end
  
  def leave_community(community)
    if self.part_of_community?(community)
      self.cbo_community_memberships.find_by_community_id(community).destroy
    end
  end
  
end
# == Schema Information
#
# Table name: cbos
#
#  id                     :integer         not null, primary key
#  email                  :string(255)     default(""), not null
#  encrypted_password     :string(255)     default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer         default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  name                   :string(255)
#  description            :text
#  created_at             :datetime
#  updated_at             :datetime
#

