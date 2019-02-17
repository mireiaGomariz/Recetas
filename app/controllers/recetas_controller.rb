class RecetasController < ApplicationController
  def index
    @recetas = Receta.all.order("created_at DESC")
  end

  def show
  end

  def new
    @receta = Receta.new
  end

  def create
    @receta = current_user.recetas.build(receta_params)
    if @receta.save
      redirect_to action: "index"
    else
      render 'new'
    end
  end

  def update

  end

  def delate

  end

  def receta_params
    params.require(:receta).permit(:titulo, :ingredientes, :elaboracion)
  end

end
