class PhysicianRelationsController < ApplicationController
  def index
    @demo_url = {
      :mp4 => "http://marketware.com.s3.amazonaws.com/videos/mw-prm-demo.mp4",
      :oog => "http://marketware.com.s3.amazonaws.com/videos/mw-prm-demo.ogg"
    }
    if session["current_username"].nil?
      @trial_url = "#user-form-box"
    else
      @trial_url = "http://marketware.com.s3.amazonaws.com/files/marketware_setup.exe"
    end
  end
  
  def customize
  end
  
  def reporting
  end
  
  def tech_specs
  end

end
