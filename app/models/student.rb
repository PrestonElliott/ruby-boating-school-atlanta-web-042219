# class Student
#     attr_accessor :first_name
#     @@all = []

#     def initialize(first_name)
#         @first_name = first_name
#         @@all << self
#     end

#     def self.all
#         @@all
#     end

#     def add_boating_test(test_name, test_status, instructor)
#         BoatingTest.new(self, test_name, test_status, instructor)
#     end

#     def self.find_student(first_name)
#         # WRONG BoatingTest.all.select { |test| test.student.first_name == first_name }
#         all.find { |student| student.first_name == first_name }
#     end

#     def grade_percentage
#         # WRONG ANSWER
#         # self.find_student(first_name)
#         # a = BoatingTest.student.count { |test| test.test_status == "passed" }
#         # b = BoatingTest.student.count { |test| test }
#         # total = (a.to_f / b.to_f) * 100
#         # total
#         total = BoatingTest.all.select { |test| test.student == self }
#         passed = total.select { |test| test.test_status == "passed" }.count
#         ((passed.to_f) / (total.length.to_f)) * 100
#     end
# end



# class Student
#     attr_reader :first_name

#     @@student = []

#     def initialize(first_name)
#         @first_name = first_name
#         @@student << self
#     end

#     def self.all
#         @@student
#     end

#     def add_boating_test(test_name, test_status, instructor)
#         BoatingTest.new(self, test_name, test_status, instructor)
#     end

#     def self.find_student(first_name)
#         Student.all.find { |x| x.first_name == first_name }
#     end

#     def grade_percentage
#         total = BoatingTest.all.select { |test| test.student == self }
#         passed = total.select { |test| test.test_status == "passed" }.length
#         grade_percentage = ((passed.to_f) / (total.length.to_f)) * 100
#     end
# end


class Student
    attr_reader :first_name

    @@student = []

    def initialize(first_name)
        @first_name = first_name
        @@student << self
    end

    def self.all
        @@student
    end

    def add_boating_test(test_name, status, instructor)
        BoatingTest.new(self, test_name, status, instructor)
    end

    def self.find_student(first_name)
        Student.all.find { |student| student.first_name == first_name }
    end

    def grade_percentage
        test_total = BoatingTest.all.select { |test| test.student == self }
        passed_tests = test_total.select { |my_test| my_test.status == "passed" }.count
        grade_percentage = ((passed_tests).to_f / (test_total.length.to_f)) * 100
    end
end
