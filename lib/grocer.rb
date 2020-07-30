require 'pry'
def find_item_by_name_in_collection(name, collection)
  order_of_goods = 0 
  while order_of_goods < collection.length do 
    shopping_list = collection[order_of_goods]

    if shopping_list[:item] == name
     return shopping_list
    end 

    order_of_goods += 1
  end
# binding.pry
end



def consolidate_cart(cart)
  index = 0
  receipt = []

  cart.each do |goodsToAddedInReceipt|
    goods = find_item_by_name_in_collection(goodsToAddedInReceipt[:item], receipt) 

    if goods 
      specificKindOfGood = 0

      receipt.each do |existingGoods|

        #  adding new key count 
        if existingGoods[:item] == goods[:item]
          existingGoods[:count] += 1
        end 

        specificKindOfGood += 1
      end 
    else
      # setting key count to the goods for the first time
      goodsToAddedInReceipt[:count] = 1
      receipt << goodsToAddedInReceipt
    end 
    
  end 
  receipt
end 


  # binding.pry 
  0


 
 



 


    
    




  