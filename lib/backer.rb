require 'pry'
class Backer
    @@all = []
    attr_accessor :name

    def initialize (name)
        @name = name
        self.class.all << self
    end 

    def self.all
        @@all
    end 

    def back_project (project)
        #binding.pry
        ProjectBacker.new(project, self)
    end

    def projects 
        ProjectBacker.all.select {|project| project.backer == self}
    end 
    def backed_projects 
        projects.map {|p| p.project}
        #binding.pry
    end 
end 