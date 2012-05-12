class Community < ActiveRecord::Base
  
  attr_accessible :name, :description
  attr_accessible :address1, :address2, :city, :state, :zip, :country
  
  has_many :student_community_memberships
  has_many :students, :through => :student_community_memberships, :source => :student
  
  has_many :cbo_community_memberships
  has_many :cbos, :through => :cbo_communit_memberships, :source => :cbo
  
  geocoded_by :full_address
  after_validation :geocode, :if => (:address1_changed? || :address2_changed? || :city_changed? || :state_changed? || :zip_changed? || :country_changed?)
  
  def full_address
    running_address = ""
    if !self.address1.empty?
      running_address += self.address1 + ', '
    end

    if !self.address2.empty?
      running_address += self.address2 + ', '
    end

    if !self.city.empty?
      running_address += self.city + ', '
    end

    if !self.state.empty?
      running_address += self.state + ', '
    end

    if !self.zip.empty?
      running_address += self.zip + ', '
    end

    if !self.country.empty?
      running_address += self.country
    end

    return running_address

  end
  
  
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
#  latitude    :float
#  longitude   :float
#  address1    :string(255)
#  address2    :string(255)
#  city        :string(255)
#  state       :string(255)
#  zip         :string(255)
#  country     :string(255)
#

