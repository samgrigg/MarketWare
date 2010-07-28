class MarketwareMailer < ActionMailer::Base

  def new_user_information(user, product)
    # recipients  "info@marketware.com"
    recipients  "samgrigg@gmail.com"
    from        "info@marketware.com"
    subject     "New User Information from MarketWare.com"
    body        :user => user, :product => product
  end
  
  def demo_request_confirmation(user, product)
    # recipients  "info@marketware.com"
    recipients  "samgrigg@gmail.com"
    from        "info@marketware.com"
    subject     "Thank you for viewing the MarketWare demo"
    body        :user => user, :product => product
  end
  
  def contact_us(name, email, phone, message)
    recipients  "info@marketware.com"
    from        "info@marketware.com"
    subject     "Contact from MarketWare.com"
    body        :name => name, :email => email, :message => message
  end
  
  def contact_confirmation(name, email)
    recipients  email
    from        "info@marketware.com"
    subject     "MarketWare Contact Confirmation"
    body        :name => name
  end
  
  def white_paper(white_paper, user)
    recipients    "info@marketware.com"
    from          "info@marketware.com"
    subject       "MarketWare White Paper: #{white_paper.title}"
    content_type  "multipart/alternative"
    
    part "text/plain" do |p|
      p.body = "Here is the white paper you requested. Thank you for your interest in MarketWare."
    end
    
    attachment :content_type => "image/jpeg",
       :body => retrieve_s3_file(white_paper.download_url).value

  end
  
  def whitepaper_request_notification(white_paper, user)
    
  end
  
  private
  
  def retrieve_s3_file(file_name)
    
    AWS::S3::Base.establish_connection!(
      :access_key_id => "AKIAITEJKBHAOURJF65Q", 
      :secret_access_key => "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"
    )
    
    AWS::S3::S3Object.find("chiguahua.jpg", "marketware.com")
    
  end

end
