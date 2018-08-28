def nyc_pigeon_organizer(data)
  pigeon_hash = {}
  
  all_names = []
  unique_names = {}
  
  data[:color].each do |key, value|
    data[:color][key].each do |value|
     all_names << value
    end
    unique_names = all_names.uniq
  end
  pigeon_hash = Hash[unique_names.collect{|element| [element, ""]}]

  data.each do |category, value|
    pigeon_hash[name][category] = []
    
    value.each do |key, name|
      if unique_names.include?(name)
        pigeon_hash[name][category].push(key.to_s)
      end
    end
  end 
  
  return pigeon_hash
end

