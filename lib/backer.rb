class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self) #this self calling on instance?
    end

    def backed_projects
    end

end
