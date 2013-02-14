class ImplatesController < ApplicationController
  # GET /implates
  # GET /implates.json
  def index
    @search = Implate.search(params[:q])
    @implates = @search.result
    
   # @implatesi = Implate.where(:status => "Implante")
   # @implatesr = Implate.where(:status => "Recolhimento")
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @implates }
    end
  end

  # GET /implates/1
  # GET /implates/1.json
  def show
    @implate = Implate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @implate }
    end
  end

  # GET /implates/new
  # GET /implates/new.json
  def new
    @implate = Implate.new(params[:status])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @implate }
    end
  end

  # GET /implates/1/edit
  def edit
    @implate = Implate.find(params[:id])
  end

  # POST /implates
  # POST /implates.json
  def create
    @implate = Implate.new(params[:implate])

    respond_to do |format|
      if @implate.save
        format.html { redirect_to @implate, notice: 'Implate criado com sucesso.' }
        format.json { render json: @implate, status: :created, location: @implate }
      else
        format.html { render action: "new" }
        format.json { render json: @implate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /implates/1
  # PUT /implates/1.json
  def update
    @implate = Implate.find(params[:id])

    respond_to do |format|
      if @implate.update_attributes(params[:implate])
        format.html { redirect_to @implate, notice: 'Implate atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @implate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /implates/1
  # DELETE /implates/1.json
  def destroy
    @implate = Implate.find(params[:id])
    @implate.destroy

    respond_to do |format|
      format.html { redirect_to implates_url }
      format.json { head :no_content }
    end
  end
end
