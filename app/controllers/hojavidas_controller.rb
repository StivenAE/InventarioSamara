class HojavidasController < ApplicationController
  before_action :set_hojavida, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!
  # GET /hojavidas
  # GET /hojavidas.json
  def index
    @hojavidas = Hojavida.search(params[:search]).order(:nombre).paginate(:page => params[:page], :per_page =>7)
    #.where(nombre: 'Computador')

    respond_to do |format|
      format.html
      format.json
      format.pdf do
        @hojavidas = Hojavida.all.order(:nombre)
        render template: "Partials/pdf", pdf: 'Pdf',layout: 'pdf.html'
      end
      format.csv {send_data @hojavidas.to_csv}
      format.xls do
        @hojavidas = Hojavida.all.order(:nombre)
      end# {send_data @hojavidas.to_csv(col_sep: "\t")}

    end
  end

  # GET /hojavidas/1
  # GET /hojavidas/1.
  def show
  end

  # GET /hojavidas/new
  def new
    @hojavida = Hojavida.new
  end

  # GET /hojavidas/1/edit
  def edit
  end

  # POST /hojavidas
  # POST /hojavidas.json
  def create
    @hojavida = Hojavida.new(hojavida_params)

    respond_to do |format|
      if @hojavida.save
        format.html { redirect_to @hojavida, notice: 'Registro creado correctamente.' }
        format.json { render :show, status: :created, location: @hojavida }
      else
        format.html { render :new }
        format.json { render json: @hojavida.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hojavidas/1
  # PATCH/PUT /hojavidas/1.json
  def update
    respond_to do |format|
      if @hojavida.update(hojavida_params)
        format.html { redirect_to @hojavida, notice: 'Registro actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @hojavida }
      else
        format.html { render :edit }
        format.json { render json: @hojavida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hojavidas/1
  # DELETE /hojavidas/1.json
  def destroy
    @hojavida.destroy
    respond_to do |format|
      format.html { redirect_to hojavidas_url, notice: 'Registro eliminado correctamente..' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hojavida
      @hojavida = Hojavida.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hojavida_params
      params.require(:hojavida).permit(:nombre, :tipo, :marca, :modelo, :serial, :precio ,:area_funcionamiento, :descripcion, :precauciones, :fecha_compra, :garantia, :proveedor, :pieza,
      componentes_attributes: [:id,:nombre_componente,:serial, :_destroy],archives_attributes: [:id,:nombre_archivo,:file,:_destroy],
      permisos_attributes: [:id,:nombre ,:serial,:fecha_vencimiento,:_destroy])
    end
end
