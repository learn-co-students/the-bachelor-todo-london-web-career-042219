def get_first_name_of_season_winner(data, season)
  # code here
  current_name=""
  winner=""
  counter=0

  data[season].each do | contestant, contestant_data |
      
      if data[season][counter]["status"]=="Winner"
        winner = data[season][counter]["name"]
      end        
      counter+=1

  end
  
  return_winner = winner.split(' ')
  return_winner[0]

end


def get_contestant_name(data, occupation)
  # code here
  current_name=""

  data.each do | season, season_data |
    counter=0
    season_data.each do
      if data[season][counter]["occupation"]==occupation
        current_name = data[season][counter]["name"]
      end        
      counter+=1
    end 
  end
  
  current_name

end

def count_contestants_by_hometown(data, hometown)
  # code here
  count_hometown=0

  data.each do | season, season_data |
    counter=0
    season_data.each do
      if data[season][counter]["hometown"]==hometown
        count_hometown+=1
      end        
      counter+=1
    end 
  end
  
  count_hometown

end

def get_occupation(data, hometown)
  # code here
  current_occupation=""

  data.each do | season, season_data |
    counter=0
    season_data.each do
      if data[season][counter]["hometown"]==hometown && current_occupation==""
        current_occupation=data[season][counter]["occupation"]
      end        
      counter+=1
    end 
  end
  
  current_occupation

end

def get_average_age_for_season(data, season)
  # code here
sum_age=0.0
return_age=0
counter=0

  data[season].each do
    sum_age+= data[season][counter]["age"].to_f
    counter+=1
  end

  if counter>0  
    return_age=(sum_age / counter).round
  end

end
