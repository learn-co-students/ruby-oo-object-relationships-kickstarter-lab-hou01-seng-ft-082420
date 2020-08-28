class ProjectBacker

    attr_reader :new, :project, :backer
    @@all = []
    
    def initialize(project,backer)
        @project = project
        @backer = backer
        @new = new

        self.class.all << self
    end

    # def backer
    #     @backer = backer
    # end

    def self.all
        @@all
    end

end
