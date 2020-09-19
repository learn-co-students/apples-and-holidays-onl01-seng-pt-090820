require 'pry'

def second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer][:fourth_of_july][1]
end
 
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array


def add_supply_to_winter_holidays(holiday_hash, supply)
    holiday_hash[:winter].each do |seasons, supplies|
     supplies << supply
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
end
end


def add_supply_to_memorial_day(holiday_hash, supply)
   
    holiday_hash[:spring].each do |seasons, decorum|
    decorum << supply
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
    holiday_hash[season][holiday_name] = supply_array
    holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
  # return an array of all of the supplies that are used in the winter season

end

def all_supplies_in_holidays(holiday_hash)
 holiday_hash.each do |season, data|
   puts "#{season.to_s.capitalize!}:"
      #binding.pry
   data.each do |holiday, decorations|
  puts "  #{holiday.to_s.split("_").map{|x| x.capitalize}.join(" ")}: #{decorations.join(", ")}"    end
  end
end
     # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
   


def all_holidays_with_bbq(holiday_hash)
    arbitray_days = []
      holiday_hash.each do |season, data|
        data.each do |holiday, list|
          if list.include?("BBQ")
            arbitray_days << holiday
          end
        end
      end
  arbitray_days
end






