def nyc_pigeon_organizer(data)
  pigeon_names = []
  
  data.each do |category, value|
    value.each do |key, name|
      pigeon_names.push(name)
    end 
  end 
  pigeon_names = pigeon_names.flatten.uniq
  
  pigeon_hash = {}
  pigeon_names.each {|name| pigeon_hash[name] = {}}
  
  
  
end

