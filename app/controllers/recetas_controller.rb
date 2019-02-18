class RecetasController < ApplicationController
  def index
    @recetas = Receta.all.order("created_at DESC")
  end

  def show
    @receta = Receta.find(params[:id])
  end

  def new
    @boton = "Crear"
    @receta = current_user.recetas.build
  end

  def create
    @receta = current_user.recetas.build(receta_params)
    if @receta.save
      redirect_to action: "index"
    else
      render 'new'
    end
  end

  def edit
    @boton = "Modificar"
    @receta = Receta.find(params[:id])
  end

  def update
    @receta = Receta.find(params[:id])
      if @receta.update(receta_params)
        flash[:notice] = "Receta modificada correctamente"
        redirect_to action: "index"
      else
        render 'edit'
      end
  end

  def destroy
    @receta = Receta.find(params[:id])
    @receta.destroy
    redirect_to receta_path, notice: "Receta eliminado correctamente"

  end

  def receta_params
    params.require(:receta).permit(:titulo, :ingredientes, :elaboracion)
  end


end
