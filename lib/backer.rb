class Backer

    attr_reader :name

    def initialize (name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        #ProjectBacker.all.select do |project|
        #    project.backer == self
        #above returned too much information, needed one more itteration
        #.collect{|project| project.project}) serves this purpose, |p| = projects that were .selected
        ((ProjectBacker.all.select {|project| project.backer == self}).collect{|project| project.project})
    end


end