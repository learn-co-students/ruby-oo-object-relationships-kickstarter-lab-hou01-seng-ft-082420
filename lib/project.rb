class Project 
    attr_reader :title 

    @@all = []

    def initialize(title)
        @title = title 

        self.class.all << self
    end 

    def self.all
        @@all
    end 

    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end     

    def backers
        joiners = ProjectBacker.all.select { |joiner| joiner.project == self}
        project_backers = joiners.collect { |joiner| joiner.backer}
    end 

end 