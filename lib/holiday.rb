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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each do |holiday, supplies|
    supplies << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring].each do |holiday, supplies|
    if holiday == :memorial_day
      supplies << supply
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.each do |holiday_season, holidays|
    if holiday_season == season
      holidays[holiday_name.to_sym] = supply_array
    end
  end
      

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = []
  holiday_hash.each do |holiday_season, holidays|
    if holiday_season == :winter
      holidays.each do |holiday, supplies|
        supplies.each do |supply|
          winter_supplies << supply
        end
      end
    end
  end
  winter_supplies
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  holiday_hash.each do |holiday_season, holidays|
    puts "#{holiday_season.capitalize}:"
    holidays.each do |holiday, supplies|
      holiday_and_supplies = ""
      temp = holiday.to_s.split("_")
      temp.each do |word|
        word.capitalize!
      end
      holiday_and_supplies << "#{temp.join(" ")}: "
      supplies.each do |supply|
        temp = supply.split(" ")
        temp.each do |word|
          if word == word.upcase
            word = word
          else 
            word.capitalize!
          end
        end
        holiday_and_supplies << "#{temp.join(" ")}, "
      end
    puts "  #{holiday_and_supplies.chop.chop}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  have_bbq = []
  holiday_hash.each do |holiday_season, holidays|
    holidays.each do |holiday, supplies|
      if supplies.include? "BBQ"
        have_bbq << holiday
      end
    end
  end
  return have_bbq
end







