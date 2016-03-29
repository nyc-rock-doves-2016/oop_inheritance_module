require_relative './developer_tester.rb'

employee  = Employee.new('Anton')

new_developer = Developer.new("Anton")
new_developer.salary = 60000
p new_developer.make_bugs
new_developer.programming_ln = 'Ruby'
p new_developer.programming_ln
p new_developer.incease_salary


# new_tester = Tester.new('Oleg')
#
# p new_tester.fix_bugs
#
intern = Intern.new('Olesy')
p intern.make_bugs
p intern.fix_bugs
