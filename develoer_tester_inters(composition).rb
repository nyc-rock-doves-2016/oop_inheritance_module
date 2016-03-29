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

  def self.make_bag(name)
    "#{name} does some bugs"
  end
end

class Developer < Employee
  def make_bag
    Code.make_bag(name)
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
    Code.make_bag(name)
  end

  def fix_bug
    Test.new(self).fix_bug
  end
end
