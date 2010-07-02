class PhysicianRelationsController < ApplicationController
  def index
    if session["current_username"]
      @demo_url = "http://marketware.com.s3.amazonaws.com/Videos/mw-prm-demo.mp4"
      @trial_url = "http://marketware.com.s3.amazonaws.com/files/marketware_setup.exe"
    else
      @demo_url = "#user-form-box"
      @trial_url = "#user-form-box"
    end
  end
  
  def customize
  end
  
  def reporting
  end
  
  def tech_specs
  end

end
