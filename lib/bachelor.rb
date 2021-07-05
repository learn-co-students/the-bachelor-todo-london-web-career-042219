require "pry"
def get_first_name_of_season_winner(data, season)
  my_answer = ""
  data.each do |key, value|
    value.each do |k|
      k.each do |kk, vv|
         #binding.pry
        if key == season && vv == "Winner"
          my_answer = k["name"].split
          my_answer = my_answer.shift
        end
      end
    end
  end
  my_answer
end

def get_contestant_name(data, occupation)
  my_answer = ""
  data.each do |key, value|
    value.each do |k|
      k.each do |kk, vv|
         #binding.pry
        if vv == occupation
          my_answer = k["name"]
        end
      end
    end
  end
  my_answer
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |key, value|
    value.each do |k|
      k.each do |kk, vv|
        if vv == hometown
          counter += 1
        end
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  my_answer = ""
  data.each do |key, value|
    value.each do |k|
      k.each do |kk, vv|
        if vv == hometown && my_answer.length < 3
          my_answer = k["occupation"]
        end
      end
      #binding.pry
    end
  end
    my_answer
end

def get_average_age_for_season(data, season)
  my_answer = 0
  new_array = []
  data.each do |key, value|
    value.each do |k|
      k.each do |kk, vv|
        if key == season && kk == "age"
          new_array = new_array << vv.to_f
  #        binding.pry
        end
      end
    end
  end
  new_array = new_array.inject(&:+) / new_array.size
  new_array.round
end
