puts 'Creating 10 new properties...'
10.times do
  property = Property.find_or_create_by!(
    name: "#{%w[Beautiful Lovely Bright Amazing Cozy Comfortable Modern
                Nice].sample} #{%w[House Home Cottage Lodge Chateau Regency Villa Studio Bungalow Barn
                                   Loft].sample}",
    units: "#{["kitchen", "bathroom", "bedroom", "living-room"].sample}"
  )
end

puts 'Finished!'
