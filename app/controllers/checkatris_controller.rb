class CheckatrisController < ApplicationController
  before_action :set_checkatri, only: [:show, :edit, :update, :destroy]

  # GET /checkatris
  # GET /checkatris.json
  def index
    @checkatris = Checkatri.order(referencia: :asc).paginate(:page => params[:page], :per_page =>25)

    respond_to do |format|
      format.html
      format.json
      format.csv {send_data @checkatris.to_csv}
      format.xls do
        @checkatris = Checkatri.all
      end# {send_data @hojavidas.to_csv(col_sep: "\t")}
    end

  end

  def import
    Checkatri.import(params[:file])
    redirect_to root_url, notice: 'Productos importados correctamente.'
  end

  # GET /checkatris/1
  # GET /checkatris/1.json
  def show
  end

  # GET /checkatris/new
  def new
    @checkatri = Checkatri.new
  end

  # GET /checkatris/1/edit
  def edit
  end

  # POST /checkatris
  # POST /checkatris.json
  def create
    @checkatri = Checkatri.new(checkatri_params)

    respond_to do |format|
      if @checkatri.save
        format.html { redirect_to new_checkatri_path, notice: 'Producto creado correctamente.' }
        format.json { render :new, status: :created, location: @checkatri }
      else
        format.html { render :new }
        format.json { render json: @checkatri.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /checkatris/1
  # PATCH/PUT /checkatris/1.json
  def update
    respond_to do |format|
      if @checkatri.update(checkatri_params)
        format.html { redirect_to checkatris_path, notice: 'Producto actualizado correctamente.' }
        format.json { render :index, status: :ok, location: @checkatri }
      else
        format.html { render :edit }
        format.json { render json: @checkatri.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /checkatris/1
  # DELETE /checkatris/1.json
  def destroy
    @checkatri.destroy
    respond_to do |format|
      format.html { redirect_to checkatris_url, notice: 'Producto eliminado correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_checkatri
      @checkatri = Checkatri.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def checkatri_params
      params.require(:checkatri).permit(:referencia, :descripcion)
    end
end
