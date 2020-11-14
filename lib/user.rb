class User < ActiveRecord::Base
    has_many :user_songs
    has_many :songs, through: :user_songs


  def self.current_user
    if @current_user
      @current_user
    else 
      @new_user
    end
  end

  def self.setup_user
    system "clear"
    prompt = TTY::Prompt.new
    user_input = prompt.select("Please LogIn or SignUp!", %w(Login SignUp))
    system "clear"
    if user_input == "SignUp"
      self.create_new_user
    else
      self.find_existing_user
    end
  end
    

  def self.create_new_user
    puts "Please create username:"
    user_name = gets.chomp
    if User.find_by(name: user_name)
      puts "Username already taken"
      create_new_user
    else
      @current_user = User.create(name: user_name)
      puts "Created Account! Welcome, #{@current_user.name}!"
    end
  end
    
  
  def self.find_existing_user
    puts "Please enter username to login!"
    user_name = gets.chomp
    @new_user = User.find_by(name: user_name)
    system "clear"
    if @new_user
      puts "Welcome back, #{@new_user.name}!"
    else
      puts "Username not found!"
      find_existing_user
    end
    @new_user
  end
    
end

