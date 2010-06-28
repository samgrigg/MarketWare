ActionController::Routing::Routes.draw do |map|
  map.root :controller => :home
  
  map.physician_relations "physician_relations", :controller => :physician_relations
  
  map.physician_recruiting "physician_recruiting", :controller => :physician_recruiting
  
  map.custom_crm "custom_crm", :controller => :custom_crm
  
  map.white_papers "white_papers", :controller => :white_papers
  
  map.resource :contact
  
  map.thank_you "contact_us/thank_you", :controller => :contacts, :action => :thank_you
  
  map.about_us "about/us", :controller => :about, :action => :us
  
  map.about_privacy "about/privacy", :controller => :about, :action => :privacy
  
  map.clients "clients", :controller => :clients
  
  map.success_stories "success_stories", :controller => :success_stories
  
  map.testimonials "testimonials", :controller => :testimonials
  
  map.resources :users
  
  map.conect ':controller/:action'
end
