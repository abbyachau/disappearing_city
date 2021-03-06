class User < ActiveRecord::Base
    def self.from_omniauth(auth_hash)
    uid = auth_hash['uid']
    provider = auth_hash['provider']

    user = User.find_or_create_by(uid: uid, provider: provider )
    user.name = auth_hash['info']['name']
    user.location = auth_hash['info']['location']
    user.image_url = auth_hash['info']['image']
    user.url = auth_hash['info']['urls']['Twitter']

    user.save!
    return user
  end
end
