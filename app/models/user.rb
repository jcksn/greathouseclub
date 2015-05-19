class User < ActiveRecord::Base
  def welcome
    @twilio = Twilio::REST::Client.new ENV['TWILIO_SID'], ENV['TWILIO_TOKEN']
    @twilio.messages.create(
      from: "+16504378953",
      to: @user.phone,
      body: "Welcome to the club. I'll need your Instagram and Snapchat. I'm gonna make you look like a gentleman. - Greathouse Falls"
    )   
  end
end
