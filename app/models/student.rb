class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  
  attr_accessible :first_name, :last_name, :school, :about_me
  
  has_many :student_community_memberships
  has_many :communities, :through => :student_community_memberships, :source => :community

  # Return the full name of the Student
  def full_name
    return ((self.first_name || '') + ' ' + (self.last_name || '') ).rstrip
  end
  
  def part_of_community?(community)
    return self.student_community_memberships.find_by_community_id(community)
  end
  
  def join_community(community)
    if !self.part_of_community?(community)
      self.student_community_memberships.create(:community_id => community.id)
    end
  end
  
  def leave_community(community)
    if self.part_of_community?(community)
      self.student_community_memberships.find_by_community_id(community).destroy
    end
  end
  
  
end
# == Schema Information
#
# Table name: students
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
#  created_at             :datetime
#  updated_at             :datetime
#  first_name             :string(255)
#  last_name              :string(255)
#  school                 :string(255)
#  about_me               :text
#

