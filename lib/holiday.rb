require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do | season, data|
    if season == :winter
      data.each do |holiday2, value|
      if holiday2 == :christmas 
      value << supply
    else
      if holiday2 == :new_years
         value << supply
      end
    end
    end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do | season, data|
    if season == :spring
      data.each do |holiday2, value|
      if holiday2 == :memorial_day
      value << supply
      end
    end
  end
end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[:fall].merge!("#{holiday_name}": supply_array)
  holiday_hash[:winter].merge!("#{holiday_name}": supply_array)
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  new_array = []
  holiday_hash[:winter].each do |holiday, supplies|
   new_array << supplies
  end
  new_array.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
      title2 = season.to_s.split("_")
        puts "#{title2.join(" ").split.map(&:capitalize)*' '}:"
      holidays.each do |holiday3, holiday_data|
          title = holiday3.to_s.split("_")
            puts"  #{title.join(" ").split.map(&:capitalize)*' '}: #{holiday_data.join(", ")}"
        end
    end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  new_array =[]
  holiday_hash.each do |season, data|
    data.each do |holiday, data2|
      #binding.pry
      if data2.include?("BBQ")
        new_array << holiday
      end
    end
  end
  new_array
end







