class HomeController < ApplicationController
  def index
			@relations_demo_url = {
		    :mp4 => "http://marketware.com.s3.amazonaws.com/videos/demo_relations.mp4",
		    :oog => "http://marketware.com.s3.amazonaws.com/videos/demo_relations.ogg",
				:img => "/images/demo-first-frame.gif"
		  }
			@recruiting_demo_url = {
		    :mp4 => "http://marketware.com.s3.amazonaws.com/videos/demo_recruiting.mp4",
		    :oog => "http://marketware.com.s3.amazonaws.com/videos/demo_recruiting.ogg",
				:img => "/images/demo-first-frame.gif"
		  }
			@custom_demo_url = {
		    :mp4 => "http://marketware.com.s3.amazonaws.com/videos/demo_custom.mp4",
		    :oog => "http://marketware.com.s3.amazonaws.com/videos/demo_custom.ogg",
				:img => "/images/demo-first-frame.gif"
		  }
			# if session["current_username"]
			# 	@relations_demo_link_url = "#relations-demo-video"
			# 	@recruiting_demo_link_url = "#recruiting-demo-video"
			# 	@custom_demo_link_url = "#custom-demo-video"
			# else
				@relations_demo_link_url = "#user_form_box_physican_relations"
				@recruiting_demo_link_url = "#user_form_box_physican_recruiting"
				@custom_demo_link_url = "#user_form_box_custom_crm"
			# end
			
			@physician_relations_trial_url = "#trial-register-form-physician-relations"
			@physician_recruiting_trial_url = "#trial-register-form-physician-recruiting"
			@custom_crm_trial_url = "#trial-register-form-custom-crm"
  end

end
