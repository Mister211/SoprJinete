class MultadosController < ApplicationController
  before_action :set_multado, only: [:show, :edit, :update, :destroy]

  # GET /multados
  # GET /multados.json
  def index
    @multados = Multado.all
  end

  # GET /multados/1
  # GET /multados/1.json
  def show
  end

  # GET /multados/new
  def new
    @multado = Multado.new
  end

  # GET /multados/1/edit
  def edit
  end

  # POST /multados
  # POST /multados.json
  def create
    @multado = Multado.new(multado_params)

    respond_to do |format|
      if @multado.save
        format.html { redirect_to @multado, notice: 'Multado was successfully created.' }
        format.json { render :show, status: :created, location: @multado }
      else
        format.html { render :new }
        format.json { render json: @multado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /multados/1
  # PATCH/PUT /multados/1.json
  def update
    respond_to do |format|
      if @multado.update(multado_params)
        format.html { redirect_to @multado, notice: 'Multado was successfully updated.' }
        format.json { render :show, status: :ok, location: @multado }
      else
        format.html { render :edit }
        format.json { render json: @multado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /multados/1
  # DELETE /multados/1.json
  def destroy
    @multado.destroy
    respond_to do |format|
      format.html { redirect_to multados_url, notice: 'Multado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_multado
      @multado = Multado.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def multado_params
      params.require(:multado).permit(:valor, :fecha, :estado, :Prestamo_id)
    end
end
