def pet_shop_name(name)
	return name[:name]
end


def total_cash(cash)
	return cash[:admin][:total_cash]
end

def add_or_remove_cash(cash, extra£)
	return cash[:admin][:total_cash] += extra£
end


def add_or_remove_cash_remove(cash, extra£)
	return cash[:admin][:total_cash] +- extra£
end

def pets_sold(sold)
	return sold[:admin][:pets_sold]
end

def stock_count(stock)
	return stock[:pets].length
end

def pets_by_breed(pet_shop, breed)
	found_pets_array = []
	for pet in pet_shop[:pets]
		if pet[:breed] == breed
		 found_pets_array.push(pet)
	  end

	end
	return found_pets_array
end


def find_pet_by_name(pet_shop, name)
	for pet in pet_shop[:pets]
		if pet[:name] == name
			return pet
		end
	end
return nil
end

# def remove_pet_by_name(pet_shop, name)
#   for pet in pet_shop[:pets]
# 	 pet[:name].delete(name)
# 		 return pet
# 	 end
#  end
# end
def remove_pet_by_name(pet_shop, name)
	for pet in pet_shop[:pets]
    if pet[:name] == name
		pet_shop[:pets].delete(pet)

   end
  end
end


def add_pet_to_stock(pet_shop, new_pet)
	pet_shop[:pets].push(new_pet)
	return pet_shop[:pets].length
end


# def customer_cash(pet_shop)
# 	return pet_shop[:price]
# end

def customer_cash(customers)
	new_customer_array = []
	return customers[:cash]
end
