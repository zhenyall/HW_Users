class Authenticator
  attr_accessor :email, :password

  def initialize(email, password)
    self.email = email
    self.password = password
  end

  def self.current_user
    @user
  end

  def login
    @user = User.find_by(email: email, password: password)
  end
end
