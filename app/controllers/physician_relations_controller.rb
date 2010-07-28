class PhysicianRelationsController < ApplicationController
  def index
    @demo_url = {
      :mp4 => "http://marketware.com.s3.amazonaws.com/videos/demo_relations.mp4",
      :oog => "http://marketware.com.s3.amazonaws.com/videos/demo_relations.ogg",
			:img => "/images/demo-first-frame.gif"
    }
    if session["current_username"].nil?
      @trial_url = "#trial-register-form"
    else
      # @trial_url = "http://marketware.com.s3.amazonaws.com/files/marketware_setup.exe"
			# @trial_url = ""
    end
  end
  
  def customize
  end
  
  def reporting
  end
  
  def tech_specs
  end

end
