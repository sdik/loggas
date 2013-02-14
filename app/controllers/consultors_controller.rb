class ConsultorsController < ApplicationController
  # GET /consultors
  # GET /consultors.json
  def index
    @consultors = Consultor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @consultors }
    end
  end

  # GET /consultors/1
  # GET /consultors/1.json
  def show
    @consultor = Consultor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @consultor }
    end
  end

  # GET /consultors/new
  # GET /consultors/new.json
  def new
    @consultor = Consultor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @consultor }
    end
  end

  # GET /consultors/1/edit
  def edit
    @consultor = Consultor.find(params[:id])
  end

  # POST /consultors
  # POST /consultors.json
  def create
    @consultor = Consultor.new(params[:consultor])

    respond_to do |format|
      if @consultor.save
        format.html { redirect_to @consultor, notice: 'Consultor criado com sucesso.' }
        format.json { render json: @consultor, status: :created, location: @consultor }
      else
        format.html { render action: "new" }
        format.json { render json: @consultor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /consultors/1
  # PUT /consultors/1.json
  def update
    @consultor = Consultor.find(params[:id])

    respond_to do |format|
      if @consultor.update_attributes(params[:consultor])
        format.html { redirect_to @consultor, notice: 'Consultor atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @consultor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consultors/1
  # DELETE /consultors/1.json
  def destroy
    @consultor = Consultor.find(params[:id])
    @consultor.destroy

    respond_to do |format|
      format.html { redirect_to consultors_url }
      format.json { head :no_content }
    end
  end
end
