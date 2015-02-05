inventory = {apples: 3, oranges: 2, strawberries: 5}

def clear
	system "clear"
end

clear

while true
	puts " "
	puts "Select an option:"
	puts "1. View item list"
	puts "2. View inventory numbers"
	puts "3. Change inventory count"
	puts "4. Change item name"
	puts "5. Add new item"
	puts "6. Delete item"
	puts "7. Exit"
	choice = gets.chomp

	if choice == "1"
		puts " "
		puts "Item list:"
		inventory.each do |item, number|
			puts "#{item.capitalize}"
		end

	elsif choice == "2"
		puts " "
		puts "Inventory"
		inventory.each do |item, number|
			puts "#{item.capitalize}: #{number}"
		end

	elsif choice == "3"
		puts " "
		puts "Which item would you like to change?"
		inventory.each do |item, number|
			puts "#{item.capitalize}: #{number}"
		end
		change = gets.chomp.downcase
		puts "What is the new quantity?"
		new_quantity = gets.chomp.to_i

		if change == "apples"
			inventory[:apples] = new_quantity
		elsif change == "oranges"
			inventory[:oranges] = new_quantity
		elsif change == "strawberries"
			inventory[:strawberries] = new_quantity
		elsif change == @new_item
			inventory[@new_item.to_sym] = new_quantity
		else
			puts "You did not make a valid choice."
		end	
		puts "Quantity change saved."

	elsif choice == "4"
		puts " "
		puts "Which item would you like to change?"
		inventory.each do |item, number|
			puts "#{item.capitalize}: #{number}"
		end
		change = gets.chomp.downcase
		puts "What is the new name?"
		new_name = gets.chomp.downcase

		if change == "apples"
			inventory[new_name.to_sym] = inventory.delete :apples
		elsif change == "oranges"
			inventory[new_name.to_sym] = inventory.delete :oranges
		elsif change == "strawberries"
			inventory[new_name.to_sym] = inventory.delete :strawberries
		elsif change == @new_item
			inventory[new_name.to_sym] = inventory.delete @new_item.to_sym
			
		else
			puts "You did not make a valid choice."
		end			
		puts "Item change saved."

	elsif choice == "5"
		puts " "
		puts "New item name?"
		@new_item = gets.chomp.downcase
		puts "New item quantity?"
		new_number = gets.chomp.to_i
		inventory[@new_item.to_sym] = new_number	
		puts "Item successfully added."


	elsif choice == "6"
		puts " "
		puts "Which item would you like to delete?"
		inventory.each do |item, number|
			puts "#{item.capitalize}: #{number}"
		end
		change = gets.chomp.downcase

		if change == "apples"
			inventory.delete :apples
		elsif change == "oranges"
			inventory.delete :oranges
		elsif change == "strawberries"
			inventory.delete :strawberries
		else
			puts "You did not make a valid choice."
		end		
		puts "Item successfully deleted."	

	else 
		puts "Exiting"
		break	
	end
end
