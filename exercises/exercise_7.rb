require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

class Employee
  validates :first_name, :last_name, :store_id, presence: true
  validates :hourly_rate, numericality: { only_integer: true }
end

class Store
  validates :annual_revenue, :name, presence: true
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true }
  validates :annual_revenue, numericality: {greater_than_or_equal_to: 0}

  def stores_must_carry_mens_or_womens_apparel
    if mens_apparel = false && womens_apparel = false
      errors.add(:expiration_date, "store must carry either men's or women's apparel")
    end
  end
end

def add_store 
  
  puts "Add a new store"
  print "> "
  user_input = $stdin.gets.chomp.to_s
  new_store = Store.create(name: user_input)
  pp new_store.errors.full_messages
end

add_store