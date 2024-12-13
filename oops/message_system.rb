class Message
  def send_message
    raise NotImplementedError, "#{self.class} must have send_message method"
  end
  
end

class EmailMessage < Message
  def send_message
    puts "Email message sent"
  end
end

class SMSMessage < Message
  def send_message
    puts "SMS message sent"
  end
end

def send_notification(message)
  message.send_message
end

email = EmailMessage.new
sms = SMSMessage.new


send_notification(email)
send_notification(sms)
