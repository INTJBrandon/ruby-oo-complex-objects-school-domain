require 'pry'
# code here!
class School
    attr_accessor :roster, :name

    def initialize(name)
        @name = name
        @roster = {}
    end


    def add_student(student, grade)
        @roster[grade] ||= []
        @roster[grade] << student
    end

    def grade(grade)
        @roster[grade]
    end
    
    def sort
        @roster = @roster.sort_by {|grade, student| grade }.to_h
        i = 0
        while i < @roster.values.length
            @roster.values[i].sort!
            i += 1
        end
        return @roster
    end

        
end
