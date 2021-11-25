require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html,:js,:json

  
  #before_action :authenticate_user!
  
  def after_sign_in_path_for(resource)
       user_home_way_url(:user_id => resource.id)
       puts"========resource======="+resource.inspect
       #puts"========resource======="+resource.id.inspect
       # case resource
       #when !resource.blank?
       #destroy_user_session_path
       #user_home_way_url(:user_id => resource.id)
       #else
       #puts"=================else_part_working============="
       #super
       #end
    end
  
  
  
end
