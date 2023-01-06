
puts 'Creating 10 new properties...'
10.times do
  property = Property.create(
    name:  "#{["Beautifu", "Lovely", "Bright", "Amazing", "Cozy", "Comfortable", "Modern", "Nice"].sample} #{["House", "Home", "Cottage", "Lodge", "Chateau", "Regency", "Villa", "Studio", "Bungalow", "Barn", "Loft"].sample}"
    units: "#{}"
  )
  restaurant.save!
end
puts 'Finished!'