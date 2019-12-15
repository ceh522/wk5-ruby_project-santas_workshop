require_relative( "../models/department.rb" )
require_relative( "../models/toy.rb" )
require("pry")


department1 = Department.new({'name' => 'Soft Toys', 'number_of_elves' => 600})
department2 = Department.new({'name' => 'Wooden Toys', 'number_of_elves' => 200})

department1.save
department2.save

toy1 = Toy.new({'name' => 'Teddy Bear', 'description' => 'Traditional faun-coloured teddy bear', 'stock_quantity' => 7354, 'buying cost' => 10, 'selling price' => 5 })
toy2 = Toy.new({'name' => 'Toy Cat', 'description' => 'Cuddly cat toy', 'stock_quantity' => 4869, 'buying_cost' => 8, 'selling_price' => 4 })


toy1.save
toy2.save


binding.pry
nil
