class User < ActiveRecord::Base

  acts_as_votable
  acts_as_voter

  is_impressionable :counter_cache => true, :column_name => :total

  def self.create_with_omniauth(auth)

    create! do |user|

      user.provider = auth['provider']
      user.uid = auth['uid']

      if auth['info']

        user.email = auth['info']['email'] || ""
        user.first_name = auth['info']['first_name'] || ""
        user.last_name = auth['info']['last_name'] || ""
        user.username = SecureRandom.uuid

        if ( auth['extra']['raw_info']['gender'] == 'male' )
          user.gender = 1
        elsif  ( auth['extra']['raw_info']['gender'] == 'female' )
          user.gender = 2
        end

      end

    end

  end

  def self.check_username(username, user_id)

    self.where(" username = ? AND id != ? ", "#{username}", "#{user_id}")

  end

  def self.search(search, page)

    self.where("concat(first_name, ' ', last_name) LIKE ? OR first_name LIKE ? OR last_name LIKE ? ", "%#{search}%", "%#{search}%", "%#{search}%").order("created_at DESC").page(page)

  end

end
