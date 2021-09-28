stock_picks = [
  {"id"=>"1", "properties"=>{"name"=>"Google", "stock_symbol"=>"GOOG", "primary_role"=>"company"}},
  {"id"=>"2", "properties"=>{"name"=>"Facebook", "stock_symbol"=>"FB", "primary_role"=>"company"}}
]

# For each company, print out the name, ID, and the stock symbol (i.e. "Google - 1 - GOOG" and "Facebook - 2 - FB")
stock_picks.each do |result|
  puts "#{result["properties"]["name"]} - #{result["id"]} - #{result["properties"]["stock_symbol"]}"
end

# Remove "primary role" key/value from Google and Facebook
stock_picks.each do |result|
  result["properties"].delete("primary_role")
end
puts stock_picks

# Assign a new "industry" key/value for Google and Facebook
stock_picks.each do |result|
  result["properties"]["industry"] = "tech"
end
puts stock_picks