# require 'pony'
class Order

  attr_reader :items, :placed_at, :time_spent

  include ItemContainer

  def initialize
    @items = Array.new
  end

  def place
    @placed_at = Time.now
    # mock = муляж класса или объекта для эмуляции Pony
  #   thr = Thread.new do
  #   Pony.mail(:to => :"sergey1shimko@gmail.com",
  #             :from => "mrjeeee@gmail.com",
  #             :via => :smtp,
  #             :via_options => {
  #                 :address => 'smtp.gmail.com',
  #                 :port => '465',
  #                 :enable_starttls_auto => true,
  #                 :user_name => 'mrjeeee@gmail.com',
  #                 :password => 'brahman2',
  #                 :authentication => :plain, # :plain, :login, :cram_md5, no auth by default
  #                 :domain => "mail.google.com" # the HELO domain provided by the client to the server
  #             },
  #             subject: 'New order', body: 'Please check admin page!')
  # end
  #   while (thr.alive?)
  #     puts '.'
  #     sleep(2)
  #   end
    sent_email_at = Time.now
    @time_spent = sent_email_at - @placed_at
  end
end