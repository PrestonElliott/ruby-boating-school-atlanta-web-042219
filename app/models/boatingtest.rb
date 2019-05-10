# class BoatingTest
#     attr_accessor :student, :instructor, :test_name, :test_status
#     @@all = []

#     def initialize(student, test_name, test_status, instructor)
#         @student = student
#         @test_name = test_name
#         @test_status = test_status
#         @instructor = instructor
#         @@all << self
#     end

#     def self.all
#         @@all
#     end
# end





# class BoatingTest
#     attr_accessor :student, :test_name, :test_status, :instructor

#     @@boatingtest = []

#     def initialize(student, test_name, test_status, instructor)
#         @student = student
#         @test_name = test_name
#         @test_status = test_status
#         @instructor = instructor
#         @@boatingtest << self
#     end

#     def self.all
#         @@boatingtest
#     end

# end


class BoatingTest
    attr_accessor :student, :test_name, :status, :instructor

    @@boatingtest = []

    def initialize(student, test_name, status, instructor)
        @student = student 
        @test_name = test_name
        @status = status
        @instructor = instructor
        @@boatingtest << self
    end

    def self.all
        @@boatingtest
    end

end