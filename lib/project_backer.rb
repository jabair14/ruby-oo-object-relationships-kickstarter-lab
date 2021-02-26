class ProjectBacker
    attr_reader :project, :backer

    @@all = []

    def self.all
        @@all 
    end

    def initialize(project_arg, backer_arg)
        @project = project_arg
        @backer = backer_arg
        @@all << self 
    end

end