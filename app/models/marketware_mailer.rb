class MarketwareMailer < ActionMailer::Base

  def new_user_information(user, product, response_type)
    recipients  "info@marketware.com"
    # recipients  "samgrigg@gmail.com"
    from        "info@marketware.com"
    subject     "New User Information from MarketWare.com"
    body        :user => user, :product => product, :response_type => response_type
  end
  
  def demo_request_confirmation(user, product)
    recipients  "info@marketware.com"
    # recipients  "samgrigg@gmail.com"
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
  
  def white_paper(user, title, url)
    recipients    "info@marketware.com"
		# recipients		"samgrigg@gmail.com"
    from          "info@marketware.com"
    subject       "MarketWare White Paper: #{title}"
    body					:title => title, :user => user
  end
  
  def white_paper_response(user, title, url, response_type)
    recipients    user.email
    from          "info@marketware.com"
    subject       "MarketWare White Paper: #{title}"
    body					:title => title, :url => url, :user => user, :response_type => response_type
  end

	def free_trial_response(user, title, url, response_type)
    recipients    user.email
    from          "info@marketware.com"
    subject       "MarketWare White Paper: #{title}"
    body					:title => title, :url => url, :user => user, :response_type => response_type
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
