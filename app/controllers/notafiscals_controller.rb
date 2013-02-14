class NotafiscalsController < ApplicationController
  # GET /notafiscals
  # GET /notafiscals.json
  def index
    @notafiscals = Notafiscal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @notafiscals }
    end
  end

  # GET /notafiscals/1
  # GET /notafiscals/1.json
  def show
    @notafiscal = Notafiscal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @notafiscal }
    end
  end

  # GET /notafiscals/new
  # GET /notafiscals/new.json
  def new
    @notafiscal = Notafiscal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @notafiscal }
    end
  end

  # GET /notafiscals/1/edit
  def edit
    @notafiscal = Notafiscal.find(params[:id])
  end

  # POST /notafiscals
  # POST /notafiscals.json
  def create
    @notafiscal = Notafiscal.new(params[:notafiscal])

    respond_to do |format|
      if @notafiscal.save
        format.html { redirect_to @notafiscal, notice: 'Notafiscal criado com sucesso.' }
        format.json { render json: @notafiscal, status: :created, location: @notafiscal }
      else
        format.html { render action: "new" }
        format.json { render json: @notafiscal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /notafiscals/1
  # PUT /notafiscals/1.json
  def update
    @notafiscal = Notafiscal.find(params[:id])

    respond_to do |format|
      if @notafiscal.update_attributes(params[:notafiscal])
        format.html { redirect_to @notafiscal, notice: 'Notafiscal atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @notafiscal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notafiscals/1
  # DELETE /notafiscals/1.json
  def destroy
    @notafiscal = Notafiscal.find(params[:id])
    @notafiscal.destroy

    respond_to do |format|
      format.html { redirect_to notafiscals_url }
      format.json { head :no_content }
    end
  end
end
