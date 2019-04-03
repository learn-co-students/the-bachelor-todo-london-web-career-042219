require 'pry'
#Keys are season numbers
#values are constant arrays
# within arrays, each contestant has own hash:
# Name: , Age:, Hometown: , Status: , Occupation:

def get_first_name_of_season_winner(data, season)
  # 'data' is a hash (the one in contestants.json)
  #season a string?
  winner = ""
  data.each do |string, array_of_hash|
    if string == season
      array_of_hash.each do |hash|
        if hash["status"] == "Winner"
          winner = hash["name"].split(' ')[0]
        end
      end
    end
  end
  winner
end

def get_contestant_name(data, occupation)
  person = ""
  data.each do |season, array_of_hash|
    array_of_hash.each do |hash|
      if hash["occupation"] == occupation
          person = hash["name"]
      end
    end
  end
  person
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, array_of_hash|
    array_of_hash.each do |hash|
      if hash["hometown"] == hometown
          counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # return occupation of 2st contestant from hometwon
  occupation = ""
  data.each do |season, array_of_hash|
    array_of_hash.each do |hash|
      if hash["hometown"] == hometown
          occupation = hash["occupation"]
          break
      end
    end
  end
  occupation
end

def get_average_age_for_season(data, season)
  total = 0
  aveAge = 0.0
  count = 0
  data.each do |string, array_of_hash|
    if string == season
      array_of_hash.each_with_index do |hash,i|
        total += hash["age"].to_f
        count = i+1
      end
      aveAge = (total / count).round
    end
  end
  aveAge
end
