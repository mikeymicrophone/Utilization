class ThingsController < ApplicationController
  before_filter :get_thing, :get_users, :only => [:owners, :appreciators, :aspiring_users]
  after_filter :friend_ids, :your_city, :only => [:owners, :appreciators, :aspiring_users]
  
  def owners
    render :action => 'users/index'
  end
  
  def appreciators
    render :action => 'users/index'
  end
  
  def aspiring_users
    render :action => 'users/index'
  end
  
  # GET /things
  # GET /things.json
  def index
    #randomize things
    #sort things
    #by creator, creators in random order
    #hr between days
    
    @things = if params[:sort].present?
      Thing.send params[:sort]
    else
      Thing.shuffled
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @things }
    end
  end

  # GET /things/1
  # GET /things/1.json
  def show
    @thing = Thing.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @thing }
    end
  end

  # GET /things/new
  # GET /things/new.json
  def new
    @thing = Thing.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @thing }
    end
  end

  # GET /things/1/edit
  def edit
    @thing = Thing.find(params[:id])
  end

  # POST /things
  # POST /things.json
  def create
    params[:thing][:user_id] ||= current_user.id
    @thing = Thing.new(params[:thing])

    respond_to do |format|
      if @thing.save
        format.html { redirect_to @thing, notice: 'Ready for action.' }
        format.json { render json: @thing, status: :created, location: @thing }
      else
        format.html { render action: "new" }
        format.json { render json: @thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /things/1
  # PUT /things/1.json
  def update
    @thing = Thing.find(params[:id])

    respond_to do |format|
      if @thing.update_attributes(params[:thing])
        format.html { redirect_to @thing, notice: 'Thing was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /things/1
  # DELETE /things/1.json
  def destroy
    @thing = Thing.find(params[:id])
    @thing.destroy

    respond_to do |format|
      format.html { redirect_to things_url }
      format.json { head :ok }
    end
  end
  
  protected
  
  def friend_ids
    if current_facebook_user
      @friend_ids = current_facebook_user.friends.map(&:id)
      @users.sort_by { |u| @friend_ids.include? u.facebook_id }
    end
  end
  
  def your_city
    if current_user.andand.city.present?
      @users.sort_by { |u| @friend_ids.include?(u.facebook_id) || current_user.city == u.city }
    end
  end
  
  def get_thing
    @thing = Thing.find params[:id]
  end
  
  def get_users
    @users = @thing.send(params[:action])
  end
end
