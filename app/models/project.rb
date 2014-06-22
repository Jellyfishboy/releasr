# Project Documentation
#
# The accessory table allows administrators to add additional items to a product and it's overall price.
# A product can have many accessories. The weight of accessories effects the end shipping calculation.

# == Schema Information
#
# Table name: projects
#
#  id                   :integer          not null, primary key
#  name                 :string(255)      
#  slug                 :string(255)  
#  website              :string(255)          
#  github               :string(255)          
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
class Project < ActiveRecord::Base

    has_many :releases

    validates :name, :github,               presence: true

    extend FriendlyId
    friendly_id :name, use: [:slugged, :finders]
end
