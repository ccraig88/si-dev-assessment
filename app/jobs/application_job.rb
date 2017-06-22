require 'twilio-ruby'

account_sid = "AC931aa394a2ecf11eb246fdf0e5b61c3f" # Your Account SID from www.twilio.com/console
auth_token = "24a67e2c712ac3434f92f649583f494b"   # Your Auth Token from www.twilio.com/console

@client = Twilio::REST::Client.new account_sid, auth_token
message = @client.account.messages.create(:body => "Hello from Ruby",
    :to => "+17757903810",    # Replace with your phone number
    :from => "+17757493672")  # Replace with your Twilio number

puts message.sid
