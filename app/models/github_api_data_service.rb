# Last count of users: 2444

require 'rest_client'
require 'json'

class GithubApiDataService
  @url = "https://api.github.com/search/users"
  @dates = ["<=2012-01-01", "2012-01-01..2012-12-31", "2013-01-01..2013-12-31", ">=2014-01-01"]

  def self.fetch_all_users
    puts "Fetching objects..."
    data = []
    @dates.each do |date|
      begin
        1.upto(Float::INFINITY)  do |i|
          params = {:params => {:q => "location:africa type:user created:#{date}", :per_page => '100', :page => "#{i}"}}
          response = RestClient.get @url, params
          response = JSON.parse(response, :symbolize_names => true)
          data.concat(response[:items])
          sleep 3
        end
      rescue Exception => err
        puts "#{err.message}: Moving on..."
        next
      end
    end
    puts "Total objects collected: #{data.count}."
    return data
  end

  def self.get_user(url)
    puts "Fetching #{url}"
    begin
      # params = {:params => {:access_token => ""}}
      # response = RestClient.get url, params
      response = RestClient.get url
      response = JSON.parse(response, :symbolize_names => true)
    rescue Exception => err
      puts "#{err.message}: Error detected"
      sleep 60
      puts "Retrying.."
      retry
    end
    return response
  end
end