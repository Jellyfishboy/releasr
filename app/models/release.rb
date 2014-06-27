# Release Documentation
#
# The release table has a simple name and notes setup. It belongs to a project

# == Schema Information
#
# Table name: releases
#
#  id                   :integer          not null, primary key
#  name                 :string(255)      
#  slug                 :string(255)  
#  notes                :text          
#  project_id           :integer      
#  draft                :boolean          default(true)
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
class Release < ActiveRecord::Base

    belongs_to :project

    validates :name,                                        uniqueness: { scope: :project_id }
    validates :name, :notes, :date,                         presence: true
    validates :notes,                                       length: { minimum: 10, message: :too_short }

    default_scope { order('date DESC') }

    scope :complete, -> { where('draft != ?', true) }

    extend FriendlyId
    friendly_id :name, use: [:slugged, :finders]
end
