class Person
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Employee < Person
  attr_accessor :salary
end

module Code
  def make_bag
    "#{@name} does some bugs"
  end
end

class Developer < Employee
  include Code
end

module Test
  def fix_bug
    "#{@name} does some test"
  end

end


class Tester < Employee
  include Test
end

class Intern < Person
  include Code
  include Test
end


developer = Developer.new("Anton")
# p developer
developer.salary = 65000
p developer
 p developer.make_bag


tester = Tester.new("Oleg")
tester.salary = 50000
p tester.fix_bug


intern = Intern.new('Olesa')
p intern.make_bag
p intern.fix_bug



# employee = Employee.new('Julia')
# employee.make_bag
