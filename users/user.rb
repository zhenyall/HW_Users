require 'yaml'
require "ostruct"
require 'json'

class User
  attr_accessor :id, :email, :password, :role

  def initialize(email:, password:, role:)
    self.email = email
    self.password = password
    self.role = role

    # @current_user = OpenStruct.new(
    #   id: rand.to_s[2..6],
    #   email: email,
    #   password: password,
    #   role: role
    # )
  end

  def self.find_by(email:, password:)
    user = all.detect { |user| user[:email] == email && user[:password] == password }

    user ? OpenStruct.new(user) : nil
  end

  def self.all
    YAML.load(File.read("./db/users.yml")) || []
  end

  def save
    self.id = rand.to_s[2..6]

    data = self.class.all

    data.push({id: id, email: email, password: password, role: role})

    File.open("./db/users.yml", "w") { |file| file.write(data.to_yaml) }
  end

  def admin?
    role == 'admin'
  end

  def superadmin?
    role == 'superadmin'
  end
end
