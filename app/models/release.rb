# Release Documentation
#
# The accessory table allows administrators to add additional items to a product and it's overall price.
# A product can have many accessories. The weight of accessories effects the end shipping calculation.

# == Schema Information
#
# Table name: releases
#
#  id                   :integer          not null, primary key
#  name                 :string(255)      
#  slug                 :string(255)  
#  notes                :text          
#  project_id           :integer          
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
class Release < ActiveRecord::Base

    belongs_to :project

    validates :name,                                uniqueness: { scope: :project_id }
    validates :name, :notes,                        presence: true
    validates :notes,                               length: { minimum: 10, message: :too_short }

    default_scope { order('created_at DESC') }

    extend FriendlyId
    friendly_id :name, use: [:slugged, :finders]
end
