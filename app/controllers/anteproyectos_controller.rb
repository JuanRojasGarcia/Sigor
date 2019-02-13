class AnteproyectosController < ApplicationController
  before_action :set_anteproyecto, only: [:show, :edit, :update, :destroy]

  # GET /anteproyectos
  # GET /anteproyectos.json
  def index
    @anteproyectos = Anteproyecto.all
  end

  # GET /anteproyectos/1
  # GET /anteproyectos/1.json
  def show
  end

  # GET /anteproyectos/new
  def new
    @anteproyecto = Anteproyecto.new
  end

  # GET /anteproyectos/1/edit
  def edit
  end

  # POST /anteproyectos
  # POST /anteproyectos.json
  def create
    @anteproyecto = Anteproyecto.new(anteproyecto_params)

    respond_to do |format|
      if @anteproyecto.save
        format.html { redirect_to @anteproyecto, notice: 'Anteproyecto was successfully created.' }
        format.json { render :show, status: :created, location: @anteproyecto }
      else
        format.html { render :new }
        format.json { render json: @anteproyecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anteproyectos/1
  # PATCH/PUT /anteproyectos/1.json
  def update
    respond_to do |format|
      if @anteproyecto.update(anteproyecto_params)
        format.html { redirect_to @anteproyecto, notice: 'Anteproyecto was successfully updated.' }
        format.json { render :show, status: :ok, location: @anteproyecto }
      else
        format.html { render :edit }
        format.json { render json: @anteproyecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anteproyectos/1
  # DELETE /anteproyectos/1.json
  def destroy
    @anteproyecto.destroy
    respond_to do |format|
      format.html { redirect_to anteproyectos_url, notice: 'Anteproyecto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anteproyecto
      @anteproyecto = Anteproyecto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anteproyecto_params
      params.require(:anteproyecto).permit(:nombre, :objetivo, :justificacion, :cronograma, :descripcionactividad, :nombreempresa, :direccionempresa, :telefonoempresa, :estatus)
    end
end
