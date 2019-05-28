def get_first_name_of_season_winner(data, season)
   data[season].each do |contestant_hash|
    if contestant_hash["status"].downcase == "winner"
      return contestant_hash["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["occupation"] == occupation
        return contestant_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  i = 0
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        i += 1
      end
    end
  end
  return i
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
