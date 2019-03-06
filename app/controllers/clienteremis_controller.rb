class ClienteremisController < ApplicationController
  before_action :set_clienteremi, only: [:show, :edit, :update, :destroy]

  # GET /clienteremis
  # GET /clienteremis.json
  def index
    @clienteremis = Clienteremi.all.paginate(:page => params[:page], :per_page =>10)
  end

  # GET /clienteremis/1
  # GET /clienteremis/1.json
  def show
  end

  # GET /clienteremis/new
  def new
    @clienteremi = Clienteremi.new
  end

  # GET /clienteremis/1/edit
  def edit
  end

  # POST /clienteremis
  # POST /clienteremis.json
  def create
    @clienteremi = Clienteremi.new(clienteremi_params)

    respond_to do |format|
      if @clienteremi.save
        format.html { redirect_to clienteremis_path, notice: 'Cliente creado correctamente' }
        format.json { render :show, status: :created, location: @clienteremi }
      else
        format.html { render :new }
        format.json { render json: @clienteremi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clienteremis/1
  # PATCH/PUT /clienteremis/1.json
  def update
    respond_to do |format|
      if @clienteremi.update(clienteremi_params)
        format.html { redirect_to clienteremis_path, notice: 'Cliente actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @clienteremi }
      else
        format.html { render :edit }
        format.json { render json: @clienteremi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clienteremis/1
  # DELETE /clienteremis/1.json
  def destroy
    @clienteremi.destroy
    respond_to do |format|
      format.html { redirect_to clienteremis_url, notice: 'Cliente eliminado correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clienteremi
      @clienteremi = Clienteremi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clienteremi_params
      params.require(:clienteremi).permit(:nombre, :apellidos, :empresa, :nit, :ciudad, :direccion, :telefono, :pedido)
    end
end
