class CanvasController < ApplicationController
  # GET /canvas
  # GET /canvas.json
  def index
    @canvas = Canva.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @canvas }
    end
  end

  # GET /canvas/1
  # GET /canvas/1.json
  def show
    @canva = Canva.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @canva }
    end
  end

  # GET /canvas/new
  # GET /canvas/new.json
  def new
    @canva = Canva.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @canva }
    end
  end

  # GET /canvas/1/edit
  def edit
    @canva = Canva.find(params[:id])
  end

  # POST /canvas
  # POST /canvas.json
  def create
    @canva = Canva.new(params[:canva])

    respond_to do |format|
      if @canva.save
        format.html { redirect_to edit_canva_path(@canva), notice: 'Canva was successfully created.' }
        format.json { render json: @canva, status: :created, location: @canva }
      else
        format.html { render action: "new" }
        format.json { render json: @canva.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /canvas/1
  # PUT /canvas/1.json
  def update
    @canva = Canva.find(params[:id])

    respond_to do |format|
      if @canva.update_attributes(params[:canva])
        format.html { redirect_to @canva, notice: 'Canva was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @canva.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /canvas/1
  # DELETE /canvas/1.json
  def destroy
    @canva = Canva.find(params[:id])
    @canva.destroy

    respond_to do |format|
      format.html { redirect_to canvas_url }
      format.json { head :no_content }
    end
  end
end
