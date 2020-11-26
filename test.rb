require_relative 'users/user'
@user = User.new(email: 'sdfsdf', password: 'sdfsdf', role: :admin)
# puts @user
puts User.find_by(email: 'test@email.com', password:'12345')
puts User.all
