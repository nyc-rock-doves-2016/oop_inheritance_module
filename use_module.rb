class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

class Employee < Person
  attr_accessor :salary
end

module Code
  def make_bugs
    "#{name} does some bugs"
  end
end

class Developer < Employee
  attr_accessor :programming_ln

  include Code

  def incease_salary
    self.salary += 5000
  end

end

module Test
  def fix_bugs
    "#{name} can fix bugs"
  end
end

class Tester < Employee
  include Test
end


class Intern < Person
  include Code
  include Test
end
