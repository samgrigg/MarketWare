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
    logger.debug "Creating User"
      @user = User.new(params[:user])
			
      # saved = @user.save
      
      if @user.valid?
      #   flash[:notice] = 'User was successfully created.'
      MarketwareMailer.deliver_new_user_information(@user, params[:related_product])
      MarketwareMailer.deliver_demo_request_confirmation(@user, params[:related_product])
      else
        # flash[:error] = "Could not create user: #{@user.errors.first.msg}"
				flash[:error] = @user.errors.on(:email)
      end
    # else
    #   @user = User.find_by_name(params[:user][:name])
    #   flash[:notice] = "Welcome back #{@user.name}"
    #   saved = true
    # end
    
    session["current_username"] = @user.name

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
