
url = "https://api.github.com/search/users"
dates = ["<=2012-01-01", "2012-01-01..2012-12-31", "2013-01-01..2013-12-31", ">=2014-01-01"]
coder_list = List.new

#coders.each do |coder|
#  coder_list.list_array << coder
#  coder_list.save
#end
  
dates.each do |date|
  begin
    1.upto(Float::INFINITY)  do |i|
      params = {:params => {:q => "location:africa created:#{date}", :per_page => '100', :page => "#{i}"}}
      response1 = RestClient.get url, params
      response2 = JSON.parse(response1, :symbolize_names => true)
      coder_list.list_array << response2[:items]
      binding.pry
      coder_list.save
      sleep 5
    end
  end
end
        
