class HavesController < ApplicationController
  # GET /haves
  # GET /haves.json
  def index
    @haves = Have.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @haves }
    end
  end

  # GET /haves/1
  # GET /haves/1.json
  def show
    @have = Have.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @have }
    end
  end

  # GET /haves/new
  # GET /haves/new.json
  def new
    @have = Have.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @have }
    end
  end

  # GET /haves/1/edit
  def edit
    @have = Have.find(params[:id])
  end

  # POST /haves
  # POST /haves.json
  def create
    @have = Have.new(params[:have])

    respond_to do |format|
      if @have.save
        format.html { redirect_to @have, notice: 'Have was successfully created.' }
        format.json { render json: @have, status: :created, location: @have }
      else
        format.html { render action: "new" }
        format.json { render json: @have.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /haves/1
  # PUT /haves/1.json
  def update
    @have = Have.find(params[:id])

    respond_to do |format|
      if @have.update_attributes(params[:have])
        format.html { redirect_to @have, notice: 'Have was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @have.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /haves/1
  # DELETE /haves/1.json
  def destroy
    @have = Have.find(params[:id])
    @have.destroy

    respond_to do |format|
      format.html { redirect_to haves_url }
      format.json { head :ok }
    end
  end
end
