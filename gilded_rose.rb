require_relative "./item.rb"

class GildedRose

  def initialize(items)
    @items = items
  end

  def update_quality() 
  #This function updates an item's quality 
    @items.each do |item|
      if item.name != "Aged Brie" and item.name != "Backstage passes to a TAFKAL80ETC concert"
      #For stuff that's not aged brie or backstage passes        
        if item.quality > 0
        #as long as you have stock of the item  
          if item.name != "Sulfuras, Hand of Ragnaros"
          #and it's not Sulfuras (because you can't sell it)
            item.quality = item.quality - 1
            #then the quality degrades by 1
          end
        end
      
      else 
      #Meaning the item is either brie, passes or Sulfuras  
        if item.quality < 50
        #If the item's quality is less than 50
          item.quality = item.quality + 1
          #Then you add 1 to the total quality of the item
          if item.name == "Backstage passes to a TAFKAL80ETC concert"
            
            if item.sell_in < 11
            #Adds +1 to ticket quality if sell by date is 10 or below  
              if item.quality < 50
                item.quality = item.quality + 1
              end
            
            end
            if item.sell_in < 6
            #Adds another +1 to ticket quality

              if item.quality < 50
                item.quality = item.quality + 1
              end

            end
          end
        end

      end

      if item.name != "Sulfuras, Hand of Ragnaros"
        item.sell_in = item.sell_in - 1
        #Deducts the days left to sell by 1 for all items but Sulfuras  
      end

      if item.sell_in < 0
      #What do to if the SellIn date is below 0 (set quality) 

        if item.name != "Aged Brie"
         #Because aged brie doesn't expire 
          if item.name != "Backstage passes to a TAFKAL80ETC concert"
          #Special condition for passes if past SellIn date 
            if item.quality > 0
            
              if item.name == "Conjured will 'o the wisp"
                
                item.quality = item.quality - 2
              
              
              elsif item.name != "Sulfuras, Hand of Ragnaros"
                
                item.quality = item.quality - 1
              
              end
            
            end
          else
            item.quality = item.quality - item.quality
            #This sets the value of the passes to 0
          end
        else
          
          if item.quality < 50
            item.quality = item.quality + 1
            #Cheese is milk's step toward immortality
          end
        end
      end

    end

  end
end

Class TempUpdateQuality
  if item.name == "Backstage passes to a TAFKAL80ETC concert"
  end
  
  if item.name == "Sulfuras, Hand of Ragnaros"
  end
  
  if item.name == "Aged Brie"
  end
end

Class CommonItem
  def initialize(items)
    @items = items
  end

  item.quality = item.quality - 1
  item.sell_in = item.sell_in - 1

end

Class ConjuredItem
  def initialize(items)
    @items = items
  end

  item.quality = item.quality - 2
end

Class BrieItem
  def initialize(items)
    @items = items
  end

  if item.name != "Aged Brie"
    if item.quality < 50
      item.quality = item.quality + 1
    end
  end
end

Class SulfurasItem
    
end

Class PassesItem
  def initialize(items)
    @items = items
  end

  if item.sell_in < 11
  #Adds +1 to ticket quality if sell by date is 10 or below  
    if item.quality < 50
      item.quality = item.quality + 1
    end
  end
  
  if item.sell_in < 6
  #Adds another +1 to ticket quality
    if item.quality < 50
      item.quality = item.quality + 1
    end
  end

  if item.sell_in < 0
    item.quality = item.quality - item.quality
  end
end