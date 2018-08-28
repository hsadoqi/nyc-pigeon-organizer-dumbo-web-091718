def nyc_pigeon_organizer(data)
  pigeon_hash = {}
  
  all_names = []
  unique_names = []
  
  data[:color].each do |key, value|
    data[:color][key].each do |value|
     all_names << value
    end
    unique_names = all_names.uniq
  end
 
  unique_names.each {|name| pigeon_hash[name] = {}}
  
  data.each do |category, value|
    pigeon_hash[name][category] = []
  end 
  
  return pigeon_hash
end

