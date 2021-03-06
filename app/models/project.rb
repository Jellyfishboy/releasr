# Project Documentation
#
# The project table contains a list of projects with associated website and github links
# A project can have many unique releases

# == Schema Information
#
# Table name: projects
#
#  id                   :integer          not null, primary key
#  name                 :string(255)      
#  slug                 :string(255)  
#  website              :string(255)          
#  github               :string(255)     
#  description          :text         
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
class Project < ActiveRecord::Base

    has_many :releases

    validates :name,                                            uniqueness: { case_sensitive: false }
    validates :name, :github, :description,                     presence: true
    validates :description,                                     length: { maximum: 150, message: :too_long}
    validates :github, :website,                                format: { with: URI::regexp(%w(http https)), message: 'has an invalid URL. Please use HTTP procotol.' }, allow_blank: true    

    extend FriendlyId
    friendly_id :name, use: [:slugged, :finders]
end
