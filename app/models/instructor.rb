# class Instructor
#     attr_accessor :name
#     @@all = []

#     def initialize(name)
#         @name = name
#         @@all << self
#     end

#     def self.all
#         @@all
#     end

#     def pass_student(student, test_name)
#         BoatingTest.all.each do |boat| 
#             if boat.student == student && boat.test_name == test_name
#                 boat.test_status = "passed"
#                 return boat
#             else
#                 BoatingTest.new(student, test_name, test_status="passed", self)
#             end
#         end
#     end

#     def fail_student(student, test_name)
#         BoatingTest.all.each do |boat| 
#             if boat.student == student && boat.test_name == test_name
#                 boat.test_status = "failed"
#             else
#                 BoatingTest.new(student, test_name, test_status="failed", self)
#             end
#         end
#     end

# end



# class Instructor
#     attr_reader :name

#     @@instructor = []

#     def initialize(name)
#         @name = name
#         @@instructor << self
#     end

#     def self.all
#         @@instructor
#     end

#     def pass_student(student, test_name)
#        BoatingTest.all.each do |test| 
#            if test.student == student && test.test_name == test_name 
#                 test.test_status = "passed"
#            else
#                 BoatingTest.new(student, test_name, test_status = "passed", self)
#            end
#         end       
#     end

#     def fail_student(student, test_name)
#         BoatingTest.all.each do |test|
#             if test.student == student && test.test_name == test_name
#                 test.test_status = "failed"
#             else
#                 BoatingTest.new(student, test_name, test_status = "failed", self)
#             end
#         end
#     end
# end



class Instructor
    attr_reader :name

    @@instructor = []

    def initialize(name)
        @name = name
        @@instructor << self
    end

    def self.all
        @@instructor
    end

    def pass_student(student, test_name)
        student_test = BoatingTest.all.find { |test| test.student == student && test.test_name == test_name }
        if student_test
            student_test.status = "passed"
        else
            BoatingTest.new(student, test_name, "passed", self)
        end
    end

    def fail_student(student, test_name)
        fail_student = BoatingTest.all.find { |test| test.student == student && test.test_name == test_name }
        if fail_student 
            fail_student.status = "failed"
        else
            BoatingTest.new(student, test_name, "failed", self)
        end
    end
end