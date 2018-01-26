def pet_shop_name(hash_name)
  return hash_name[:name]
end


def total_cash(hash_name)
  return hash_name[:admin][:total_cash]
end


def add_or_remove_cash(hash_name, amount)
  change = hash_name[:admin][:total_cash] + amount
  hash_name[:admin][:total_cash] = change
  return hash_name[:admin][:total_cash]
end


def pets_sold(hash_name)
  return hash_name[:admin][:pets_sold]
end


def increase_pets_sold(hash_name, num_increase)
  change = hash_name[:admin][:pets_sold] + num_increase
  hash_name[:admin][:pets_sold] = change
  return hash_name[:admin][:pets_sold]
end


def stock_count(hash_name)

  stock_count = 0

  for pet in hash_name[:pets]
    stock_count += 1
  end

  return stock_count
end



def pets_by_breed(hash_name, breed)

  pets = []

  for pet in hash_name[:pets]
    if pet[:breed] == breed
      pets << pet
    end
  end
  return pets
end


def find_pet_by_name(hash_name, pet_name)
  for pet in hash_name[:pets]
    if pet[:name] == pet_name
      gotcha = pet
    end
  end
  return gotcha
end


def remove_pet_by_name(hash_name, pet_name)
  for pet in hash_name[:pets]
    if pet[:name] == pet_name
      hash_name[:pets].delete(pet)
    end
  end
end


def add_pet_to_stock(hash_name, hash_new_pet)
  hash_name[:pets] << hash_new_pet
end


def customer_pet_count(hash_customers)

  return hash_customers[:pets].count

end


def add_pet_to_customer(customer, hash_new_pet)

  customer[:pets] << hash_new_pet

end


def customer_can_afford_pet(customer, new_pet)

  cash = customer[:cash]
  price = new_pet[:price]

  if (cash - price) > 0
    can_buy_pet = true
  else
    can_buy_pet = false
  end

end


def sell_pet_to_customer(hash_name, pet, customer)


  if pet == nil

  elsif customer_can_afford_pet(customer, pet)

  add_pet_to_customer(customer, @pets)
  increase_pets_sold(hash_name, 1)

  amount = pet[:price]

  add_or_remove_cash(hash_name, amount)

  else

  end

end
