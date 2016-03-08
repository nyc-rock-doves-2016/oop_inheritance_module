class Person
  def initialize(name)
    @name = name
  end
end

class Employee < Person
  attr_accessor :salary
end

class Developer < Employee
  def make_bag
    "#{@name} does some bugs"
  end
end

class Tester < Employee
  def fix_bug
    "#{@name} does some test"
  end
end

class Intern < Person
end


developer = Developer.new("Anton")
# p developer
developer.salary = 65000
p developer.make_bag


tester = Tester.new("Oleg")
tester.salary = 50000
p tester.fix_bug


intern = Intern.new('Olesa')
p intern
