class Backer
    attr_reader :name 

    @@all = []

    def initialize(name)
        @name = name 

        self.class.all << self
    end 

    def self.all
        @@all
    end 

    def back_project(project)
        ProjectBacker.new(project,self)
    end 

    def backed_projects
        joiners = ProjectBacker.all.select { |joiner| joiner.backer == self}
        backed_projects = joiners.collect { |joiner| joiner.project}
    end 

end 