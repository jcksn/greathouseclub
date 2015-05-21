class User < ActiveRecord::Base
  def welcome
    @twilio = Twilio::REST::Client.new ENV['TWILIO_SID'], ENV['TWILIO_TOKEN']
    @twilio.messages.create(
      from: "+16504378953",
      to: self.phone,
      body: "Yo! Welcome to the Greathouse Club.  Here's how the Club works: To get in, you text this number with your instagram/other social media account info. After a quick check, I add you on snapchat. Once you're in, you can snap a picture for any kind of fashion advice -- deciding between two things, tips on how to wear something, whatever you want. Totally free."
    )   
  end
end
