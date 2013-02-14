class DetalesController < ApplicationController
  def index
      @implate = Implate.find(params[:implate_id])
      @detale = @implate.detales
  end

  def show
     @implate = Implate.find(params[:implate_id])
     @detale = @implate.detales.find(params[params[:id]])
  end

  def new
    @implate = Implate.find(params[:implate_id])
    @detale = @implate.detales.build(params[:detale])
    if @detale.save
      redirect_to implate_detale_url(@implante, @detale)
    else
      render :action => "new"
    end
  end
  def create
    @implate = Implate.find(params[:implate_id])
    @detale = @implate.detales.create(params[:detale])
    if @detale.save
      redirect_to implate_path(@implate)
    else
      render :action => "new"
    end
  end

  def edit
     @implate = Implate.find(params[:implate_id])
     @detale = @implate.detales.find(params[params[:id]])
  end
  
  def update
    @implate = Implate.find(params[:implate_id])
    @detale = Detale.find(params[:id])
    if @detale.update_attributes(params[:detale])
      redirect_to implate_detale_url(@implate, @detale)
    else
      render :action => "edit"
    end
  end

  def destroy
    @implate = Implate.find(params[:implate_id])
    @detale = Detale.find(params[:id])
    @detale.destroy

    respond_to do |format|
      format.html { redirect_to implate_path(@implate) }
      format.xml  { head :ok }
    end
  end
end
