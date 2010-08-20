class ContactsController < ApplicationController
  def show
  end
  
  def create
    if params[:name].empty? || params[:email].empty? || params[:message].empty?
      flash[:error] = "You are missing required fields. Please make sure all required fields have been filled out"
      render :show
    else
      MarketwareMailer.deliver_contact_us(params[:name], params[:email], params[:phone] || "", params[:consultant_name] || "", params[:message])

      #deliver mail to the contactor thanking them for taking the time to contact MarketWare
      MarketwareMailer.deliver_contact_confirmation(params[:name], params[:email])

      redirect_to thank_you_path
    end
    
  end
  
  def thank_you
    
  end

end
