    # find room based on room number
    # input: aRoom_number (int)
    # returns Room
    def find_room(aRoom_number)
      if aRoom_number.class != Integer
        raise ArgumentError.new("Invalid, room number needs to be an Integer")
      end

      found_room = nil
      @rooms.each do |room|
        if room.room_number == aRoom_number
          return room
        end
      end
      return found_room
    end
#****************************************************************
    #Total cost for a given reservation
    #returns total_cost (float)
    def total_cost()
      total_cost = nil
      if @room != nil
        total_cost = @room.price.to_f * @number_of_days
      end
      return total_cost
    end  
#****************************************************************
    
    # checks if aDate is within the check_in and check_out
    # aDate (Date)
    # returns true or false 
    def is_within_stay(aDate)
      if (aDate >= @check_in) && (aDate < @check_out)
        return true
      end
      return false
    end
    #****************************************************************