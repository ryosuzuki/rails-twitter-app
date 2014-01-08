class User < ActiveRecord::Base

  validates :uid, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  validates :token, presence: true
  validates :secret, presence: true

  def self.oauth(auth)
    uid = auth[:uid]
    params = {
      username: auth[:info][:nickname],
      token: auth[:credentials][:token], 
      secret: auth[:credentials][:secret] 
    }
    @user = User.find_by(uid: uid)
    if @user.nil?
      params = params.merge(uid: uid) 
      @user = User.create(params)
    else
      @user.update(params)
    end
  end

end
