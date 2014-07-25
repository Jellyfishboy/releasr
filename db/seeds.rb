# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(email: 'admin@example.com', password: 'admin123#')
@project = Project.create(name: 'Project 1', description: 'This is a description for your project, with a maximum character value of 150.', github: 'http://github.com/Jellyfishboy', website: 'http://www.tomdallimore.com')
Release.create(name: 'v1.0.0', notes: 'These are your list of release notes...', project_id: @project.id, state: 1)