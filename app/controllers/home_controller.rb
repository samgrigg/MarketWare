class HomeController < ApplicationController
  def index
			if session["current_username"]
				@physician_relations_demo_url = "http://marketware.com.amazonaws.com/videos/physician_relations_demo.flv"
				@physician_relations_trial_url = "http://marketware.com.amazonaws.com/files/marketware_setup.exe"
				
				@physician_recruiting_demo_url = "http://marketware.com.amazonaws.com/videos/physician_recruiting_demo.flv"
				@physician_recruiting_trial_url = "http://marketware.com.amazonaws.com/files/marketware_setup.exe"
				
				@custom_crm_demo_url = "http://marketware.com.amazonaws.com/videos/custom_crm_demo_demo.flv"
				@custom_crm_trial_url = "http://marketware.com.amazonaws.com/files/marketware_setup.exe"
			else
				@physician_relations_demo_url = "#user_form_box_physican_relations"
				@physician_relations_trial_url = "#user_form_box_physican_relations"
				
				@physician_recruiting_demo_url = "#user_form_box_physican_recruiting"
				@physician_recruiting_trial_url = "#user_form_box_physican_recruiting"
				
				@custom_crm_demo_url = "#user_form_box_custom_crm"
				@custom_crm_trial_url = "#user_form_box_custom_crm"
			end
  end

end
