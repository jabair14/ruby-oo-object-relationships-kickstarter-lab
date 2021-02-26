require 'pry'

class Project
    attr_reader :title
    def initialize(title_arg)
        @title = title_arg
    end

    def add_backer(backer_arg)
        ProjectBacker.new(self, backer_arg) #calling on this instance method?
    end

    def backed_projects
        backers = ProjectBacker.all.select do |the_backers|
            backers.project == self 
        end
        backers.map do |the_backers|
            the_backers.backer
        end
    end

end
# binding.pry 