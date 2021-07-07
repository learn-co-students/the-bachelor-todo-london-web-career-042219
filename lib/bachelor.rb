require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |season_data, all_contestants|
    if season_data == season
      all_contestants.each do |contestant|
        if contestant["status"] == "Winner"
          return contestant["name"].split(" ")[0].to_s
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_data, all_contestants|
    all_contestants.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  people_from = 0
  data.each do |season_data, all_contestants|
    all_contestants.each do |contestant|
      if contestant["hometown"] == hometown
        people_from += 1
      end
    end
  end
  return people_from
end

def get_occupation(data, hometown)
  data.each do |season_data, all_contestants|
    all_contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total_years = 0.0
  num_contestants = 0
  data.each do |season_data, all_contestants|
    if season_data == season
      all_contestants.each do |contestant|
        total_years += contestant["age"].to_f
        num_contestants +=1
      end
    end
  end
  avg_age = total_years / num_contestants
  decimal = avg_age % 1
  decimal >= 0.5 ? (avg_age + (1 - decimal)) : (avg_age - decimal)
end
