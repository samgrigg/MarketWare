class UsersController < ApplicationController
  # GET /users
  # GET /users.xml
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

  # GET /users/1
  # GET /users/1.xml
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/new
  # GET /users/new.xml
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.xml
  def create
    # unless session["current_username"]#({:name => params[:user][:name]})
    # logger.debug "Creating User"
      @user = User.new(params[:user])
			
      if @user.valid?
		    session["current_username"] = @user.name
		
				if params[:response_type] == "try_it_free"
					MarketwareMailer.deliver_new_user_information(@user, "A free trial of " + params[:related_product], params[:response_type])
				else
					MarketwareMailer.deliver_new_user_information(@user, params[:related_product], params[:response_type])
				end
				case params[:response_type]
					when "try_it_free"
						#They're downloading a trial of the software
						MarketwareMailer.deliver_free_trial_response(@user, params[:related_product], params[:download_url], params[:response_type])
					when "white_paper"
						# They're downloading a white paper
						MarketwareMailer.deliver_white_paper_response(@user, params[:related_product], params[:download_url], params[:response_type])
					when "marketware_download"
						# They're downloading marketware
						MarketwareMailer.deliver_download_response(@user, params[:related_product], params[:download_url], params[:response_type])
					else
						#They must be requesting a demo movie (default option)
						MarketwareMailer.deliver_demo_request_confirmation(@user, params[:related_product])
				end
      end

    respond_to do |wants|
      wants.js
    end
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        flash[:notice] = 'User was successfully updated.'
        format.html { redirect_to(@user) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end
end
