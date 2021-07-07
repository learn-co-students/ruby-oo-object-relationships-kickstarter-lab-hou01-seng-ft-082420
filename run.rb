require 'pry'

require_relative 'lib/backer.rb'
require_relative 'lib/project.rb'
require_relative 'lib/project_backer.rb'

#lets get it
bob = Backer.new("Bob")
awesome_project = Project.new("This is an Awesome Project")

bob.back_project(awesome_project)
# bob.backed_projects
# awesome_project.backers


binding.pry