class User < ActiveRecord::Base
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      # ###############################################
      # TODO これ必要？
      # ###############################################
      #user.token = auth['credentials']['token']
      #user.secret = auth['credentials']['secret']
    end
  end
end
