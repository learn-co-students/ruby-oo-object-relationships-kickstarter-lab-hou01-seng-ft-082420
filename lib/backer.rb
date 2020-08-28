class Backer

    attr_reader :name
    
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project,self)
    end

    def backed_projects
        # ((ProjectBacker.all.select {|pb| pb.backer == self}).collect{|p| p.project})
        ProjectBacker.all.select {|pb| pb.backer == self}
    end

end