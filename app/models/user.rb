class User < ActiveRecord::Base
  attr_accessible :login, :avatar_url, :gravatar_id, :url, :html_url, :followers_url, :following_url, :gists_url, :starred_url, :subscriptions_url, :organizations_url, :repos_url, :events_url, :received_events_url, :type, :site_admin, :name, :company, :blog, :location, :email, :hireable, :bio, :public_repos, :public_gists, :followers, :following, :created_at, :updated_at, :score, :id, :updated

  self.primary_key = :id

  def updated?
    if updated_at.nil? && created_at.nil?
      return false
    elsif created_at.eql?(updated_at)
      return false
    else
      return true
    end
  end

  def to_s
    "#{name} @#{login}"
  end
end
