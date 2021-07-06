class Project

    attr_reader :title

    def initialize(title)
        @title = title

    end 

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end 

    def backers
        (ProjectBacker.all.select{|projects|projects.project == self}).collect{|p| p.backer}
    end 

end