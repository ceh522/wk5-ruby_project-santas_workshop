require_relative( "../models/department.rb" )
require_relative( "../models/toy.rb" )



department1 = Department.new({'name' => 'Soft Toys', 'number_of_elves' => 3})
department2 = Department.new({'name' => 'Wooden Toys', 'number_of_elves' => 400})
department3 = Department.new({'name' => 'Electronic Toys', 'number_of_elves' => 700})
department4 = Department.new({'name' => 'Plastic Toys', 'number_of_elves'=> 900})
department5 = Department.new({'name' => 'Metal Toys', 'number_of_elves' => 500})

department1.save
department2.save
department3.save
department4.save

toy1 = Toy.new({'name' => 'Teddy Bear', 'description' => 'Traditional faun-coloured teddy bear', 'stock_quantity' => 0, 'stock_target' => 13567, 'value' => 12, 'department_id' => department1.id})
toy2 = Toy.new({'name' => 'Toy Cat', 'description' => 'Cuddly cat toy', 'stock_quantity' => 4869, 'stock_target' => 12457, 'value' => 8, 'department_id' => department1.id})
toy3 = Toy.new({'name' => 'Wooden castle', 'description' => 'Wooden model of Carcasonne', 'stock_quantity' => 300, 'stock_target' => 457, 'value' => 10, 'department_id' => department2.id})
toy4 = Toy.new({'name' => 'Rubber duck', 'description' => 'Bath toy, coding aid', 'stock_quantity' => 9000, 'stock_target' => 17000, 'value' => 10, 'department_id' => department4.id})
# toy5 = Toy.new({'name' => 'Electric train set', 'description' => 'Model train set, including signal box', 'stock_quantity' => 4000, 'stock_target' => 5000, 'value' => 9, 'department_id' => department3.id})
# toy6 = Toy.new({'name' => 'Cuddly Sloth', 'description' => 'Plush Giant Sloth toy', 'stock_quantity' => 300, 'stock_target' => 9000, 'value' => 6, 'department_id' => department1.id})
# toy7 = Toy.new({'name' => 'Wooden flute', 'description' => 'Bamboo flute', 'stock_quantity' => 400, 'stock_target' => 500, 'value' => 3, 'department_id' => department2.id})
# toy8 = Toy.new({'name' => 'Remote-controlled car', 'description' => 'Remote-controlled red Porsche', 'stock_quantity' => 0, 'stock_target' => 757, 'value' => 6, 'department_id' => department3.id})

toy1.save
toy2.save
toy3.save
toy4.save
# toy5.save
# toy6.save
# toy7.save
# toy8.save
