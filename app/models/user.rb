class User < ActiveRecord::Base
  attr_accessible :secret, :token, :uid, :username

  def self.oauth(auth)
    if User.find_by_uid(auth['uid']).nil?
      @user = User.create({ :uid => auth['uid'], :username => auth['info']['nickname'], :token => auth['credentials']['token'], :secret => auth['credentials']['secret'] })
    else
      @user = User.find_by_uid(auth['uid'])
    end
  end

end
