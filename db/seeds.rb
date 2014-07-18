#Model.attr_accessible :normally_inaccessible_attribute

# puts "#fetch all users"
user_list = GithubApiDataService.fetch_all_users

# puts "#purge the database"#create and save all users(objects
User.delete_all

puts "#update users..."
old_user_list = user_list
# old_user_list = User.all
# user_list = []

# old_user_list.each do |attributes|
#   attributes = GithubApiDataService.get_user(attributes[:url])
#   user_list << attributes
# end
# puts "#user profile updates complete!"

puts "#save all users updates"
user_list.each do |attributes|
  user = User.find(attributes[:id])
  user.update_attributes(attributes)

  puts "#saved #{user} to database"
end

puts "#create and save all users(objects)"
user_list.each do |attributes|
  user = User.new do |object|
    attributes.each do |key, value|
      object.send("#{key}=", value)
    end
  end
  user
  puts "#saving #{user} to database"
  #persist in database
  user.save!
end

puts "Seeding complete."


