require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

int1 = Instructor.new("Brit")
int2 = Instructor.new("Hanaa")

stu1 = Student.new("Preston")
stu2 = Student.new("Jae")

test1 = BoatingTest.new(stu1, "Flight test", "failed", int1)
test2 = BoatingTest.new(stu1, "Ruby test", "passed", int2)
test3 = BoatingTest.new(stu2, "Javascript test", "passed", int2)
test4 = BoatingTest.new(stu1, "Scuba test", "failed", int2)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

