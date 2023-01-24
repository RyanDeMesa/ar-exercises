require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

class Store
  has_many :employees
end

class Employee
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Ryan", last_name: "De Mesa", hourly_rate: 30)
@store1.employees.create(first_name: "Natasha", last_name: "Sevilla", hourly_rate: 50)
@store2.employees.create(first_name: "Milo", last_name: "Dogg", hourly_rate: 100)
@store2.employees.create(first_name: "Bear", last_name: "Dogg", hourly_rate: 10)

pp Employee.all