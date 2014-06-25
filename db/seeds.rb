#Model.attr_accessible :normally_inaccessible_attribute

#fetch all users
user_list = GithubApiDataService.fetch_all_users

#purges the database
User.delete_all

#creates and saves all objects
user_list.each do |attributes|
  user = User.new do |object|
    attributes.each do |key, value|
      object.send("#{key}=", value)
    end
  end
  #persist in database
  user.save!
end

puts "Seeding complete."


