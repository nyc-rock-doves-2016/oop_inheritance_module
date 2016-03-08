class Person
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class Employee < Person
  attr_accessor :salary
end

class Code
  def initialize(person)
    @person = person
  end

  def make_bag
    "#{@person.name} does some bugs"
  end
end

class Developer < Employee
  def make_bag
    Code.new(self).make_bag
  end
end

class Test
  def initialize(person)
    @person = person
  end

  def fix_bug
    "#{@person.name} does some test"
  end
end

class Tester < Employee
  def fix_bug
    Test.new(self).fix_bug
  end
end

class Intern < Person
  def make_bag
    Code.new(self).make_bag
  end

  def fix_bug
    Test.new(self).fix_bug
  end
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
