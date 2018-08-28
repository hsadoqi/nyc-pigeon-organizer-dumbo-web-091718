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

  data[:color].each do |colors, name|
      i = 0 
      if name == pigeon_hash[i]
        pigeon_hash[i][:color] << colors
        i += 1 
    end 
  end

  return pigeon_hash
end

