class User < ActiveRecord::Base
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.email = auth["info"]["email"]
      user.oauth_token = auth["credentials"]["token"]
      if auth["credentials"]["expires_at"]
        user.oauth_expires_at = Time.at(auth["credentials"]["expires_at"])
      end
      user.save!
    end
  end
end
