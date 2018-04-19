require 'pony'
class Order

  attr_reader :items

  include ItemContainer

  def initialize
    @items = Array.new
  end

  def place
    # thr = Thread.new do
    Pony.mail(:to => :"sergey1shimko@gmail.com",
              :from => "mrjeeee@gmail.com",
              :via => :smtp,
              :via_options => {
                  :address => 'smtp.gmail.com',
                  :port => '465',
                  :enable_starttls_auto => true,
                  :user_name => 'mrjeeee@gmail.com',
                  :password => 'brahman2',
                  :authentication => :plain, # :plain, :login, :cram_md5, no auth by default
                  :domain => "mail.google.com" # the HELO domain provided by the client to the server
              },
              subject: 'New order', body: 'Please check admin page!')
  end
  # while (thr.alive?)
  #   puts '.'
  #   sleep(2)
  # end
  # end
end