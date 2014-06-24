# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :person do
    login "MyString"
    id 1
    avatar_url "MyString"
    gravatar_id "MyString"
    url "MyString"
    html_url "MyString"
    followers_url "MyString"
    following_url "MyString"
    gists_url "MyString"
    starred_url "MyString"
    subscriptions_url "MyString"
    organizations_url "MyString"
    repos_url "MyString"
    events_url "MyString"
    received_events_url "MyString"
    type false
    name "MyString"
    company "MyString"
    blog "MyString"
    location "MyString"
    email "MyString"
    hireable false
    bio "MyText"
    public_repos 1
    public_gists 1
    followers 1
    following 1
  end
end
