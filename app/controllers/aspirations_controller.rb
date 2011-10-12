class AspirationsController < ApplicationController
  # GET /aspirations
  # GET /aspirations.json
  def index
    @aspirations = Aspiration.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @aspirations }
    end
  end

  # GET /aspirations/1
  # GET /aspirations/1.json
  def show
    @aspiration = Aspiration.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @aspiration }
    end
  end

  # GET /aspirations/new
  # GET /aspirations/new.json
  def new
    @aspiration = Aspiration.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @aspiration }
    end
  end

  # GET /aspirations/1/edit
  def edit
    @aspiration = Aspiration.find(params[:id])
  end

  # POST /aspirations
  # POST /aspirations.json
  def create
    @aspiration = Aspiration.new(params[:aspiration])

    respond_to do |format|
      if @aspiration.save
        format.js
        format.html { redirect_to @aspiration, notice: 'Aspiration was successfully created.' }
        format.json { render json: @aspiration, status: :created, location: @aspiration }
      else
        format.html { render action: "new" }
        format.json { render json: @aspiration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /aspirations/1
  # PUT /aspirations/1.json
  def update
    @aspiration = Aspiration.find(params[:id])

    respond_to do |format|
      if @aspiration.update_attributes(params[:aspiration])
        format.html { redirect_to @aspiration, notice: 'Aspiration was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @aspiration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aspirations/1
  # DELETE /aspirations/1.json
  def destroy
    @aspiration = Aspiration.find(params[:id])
    @aspiration.destroy

    respond_to do |format|
      format.html { redirect_to aspirations_url }
      format.json { head :ok }
    end
  end
end
