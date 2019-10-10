require 'pry'

def get_first_name_of_season_winner(data, season) 
  
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
  
      return contestant["name"].split[0]

    end
 end 
end


def get_contestant_name(data, occupation)
  
  data.each do |season, contestants|
    contestants.each do |contestant|
     if contestant["occupation"] == occupation
      
    return contestant["name"]
     end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counts = 0
  
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        counts += 1
      
      end
    end
  end 
  return counts      
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown

        return contestant["occupation"]
      end
    end
  end
end      

def get_average_age_for_season(data, season)
  ages = []
  data[season].each do |contestants|
      ages << contestants["age"].to_f

  end
  (ages.sum / ages.size).round
    
end
