require 'pry'

class Backer
    attr_reader :name

    def initialize(name)
        @name = name
        #self.class.all << self
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        projects = ProjectBacker.all.select do |pb|
            pb.backer == self
          end
          projects.collect do |name|
              name.project
          end
    end




end