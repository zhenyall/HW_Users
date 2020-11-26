require_relative 'superadmin.rb'
require_relative 'admin.rb'
require_relative 'guest.rb'

class Init
  
  def initialize(login, password)
  	@login = login
  	@password = password
  end

  def entrance
    if superadmin?
      user = Superadmin.new
    else admin?
      user = Admin.new
    elsif guest?
      user = Guest.new
  end

  private 

  def superadmin?
    @login == 'superadmin@ror.ck' && @password == 'superadmin!'
  end

  def admin?
  	@login == 'admin@ror.ck' && @password == 'admin!'
  end

  def guest?
  	@login == 'guest@ror.ck' && @password == 'guest!'
  end
end


