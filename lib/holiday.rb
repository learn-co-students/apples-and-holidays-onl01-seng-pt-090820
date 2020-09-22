def second_supply_for_fourth_of_july(holiday_hash)
    holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_supplies[:winter][:christmas] << supply
  holiday_supplies[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_supplies[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_supplies[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
   list_of_supplies = holiday_supplies[:winter].collect do |holiday, supplies|
      supplies
   end
   list_of_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_supplies.each do |season, holidays|
    seasons = season.to_s
    puts "#{seasons.capitalize!}:"
    holidays.each do |holiday, supplies|
      split_holiday = holiday.to_s.split("_").collect do |word|
        words = word.capitalize!
      end.join(" ")
      puts "  #{split_holiday}: #{supplies.join(", ")}" 
    end 
  end
  all_supplies_in_holidays(holiday_supplies)
end


def all_holidays_with_bbq(holiday_hash)
holidays_with_BBQ = []
  holiday_supplies.collect do |season, holidays|
    holidays.collect do |holiday, supplies|
      if supplies.include?("BBQ")
         holidays_with_BBQ << holiday 
      end
    end
  end
  holidays_with_BBQ.uniq
end
