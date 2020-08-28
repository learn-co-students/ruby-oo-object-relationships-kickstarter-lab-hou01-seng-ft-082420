require 'pry'
class Project
    @@all = []
    attr_reader :title 

    def initialize (title)
        @title = title 
        self.class.all << self
    end 

    def self.all 
        @@all
    end 

    def add_backer (backer)
        ProjectBacker.new(self, backer)
    end 

    def project_backers
        #binding.pry
         ProjectBacker.all.select {|project| project.project == self}
    end 

    def backers 
        project_backers.map {|project| project.backer}
    end
end 