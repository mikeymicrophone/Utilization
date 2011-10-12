class AppreciationsController < ApplicationController
  # GET /appreciations
  # GET /appreciations.json
  def index
    @appreciations = Appreciation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @appreciations }
    end
  end

  # GET /appreciations/1
  # GET /appreciations/1.json
  def show
    @appreciation = Appreciation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @appreciation }
    end
  end

  # GET /appreciations/new
  # GET /appreciations/new.json
  def new
    @appreciation = Appreciation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @appreciation }
    end
  end

  # GET /appreciations/1/edit
  def edit
    @appreciation = Appreciation.find(params[:id])
  end

  # POST /appreciations
  # POST /appreciations.json
  def create
    @appreciation = Appreciation.new(params[:appreciation])

    respond_to do |format|
      if @appreciation.save
        format.js
        format.html { redirect_to @appreciation, notice: 'Appreciation was successfully created.' }
        format.json { render json: @appreciation, status: :created, location: @appreciation }
      else
        format.html { render action: "new" }
        format.json { render json: @appreciation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /appreciations/1
  # PUT /appreciations/1.json
  def update
    @appreciation = Appreciation.find(params[:id])

    respond_to do |format|
      if @appreciation.update_attributes(params[:appreciation])
        format.html { redirect_to @appreciation, notice: 'Appreciation was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @appreciation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appreciations/1
  # DELETE /appreciations/1.json
  def destroy
    @appreciation = Appreciation.find(params[:id])
    @appreciation.destroy

    respond_to do |format|
      format.html { redirect_to appreciations_url }
      format.json { head :ok }
    end
  end
end
