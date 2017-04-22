json.maps @spaces do |space|
  json.name space.name
  json.coordinates [space.latitude, space.longitude]
end
