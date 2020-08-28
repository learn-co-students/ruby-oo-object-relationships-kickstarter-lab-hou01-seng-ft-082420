require 'pry'

class Project
    attr_reader :title


    def initialize(title)
        @title = title
        #self.class.all << self
    end
    
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end
    def backers
        backers = ProjectBacker.all.select do |pb|
          pb.project == self
        end
        backers.collect do |name|
            name.backer
        end
    end




end