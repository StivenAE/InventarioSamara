class RemisionsController < ApplicationController

    def index
      @remisions = Remision.all
    end

    def show
      @remision = Remision.find(params[:id])
      respond_to do |format|
        format.html
        format.json
        format.pdf do
            render template: "remisions/pdfRemi"
        end
      end
    end

    def new
      @remision = Remision.new
    end

    def edit
      @remision = Remision.find(params[:id])
    end

    def create
      @remision = Remision.new(remision_params)
      respond_to do |format|
        if @remision.save
          format.html { redirect_to @remision, notice: 'Remision creada correctamente.' }
          format.json { render :show, status: :created, location: @remision }
        else
          format.html { render :new }
          format.json { render json: @remision.errors, status: :unprocessable_entity }
        end
      end

    end

    def update
      @remision = Remision.find(params[:id])
      respond_to do |format|
        if @remision.update(remision_params)
          format.html { redirect_to @remision, notice: 'Remision actualizada correctamente.' }
          format.json { render :show, status: :ok, location: @remision }
        else
          format.html { render :edit }
          format.json { render json: @remision.errors, status: :unprocessable_entity }
        end
      end
    end

    private

    def set_remision
      @remision = Remision.find(params[:id])
    end

      # Never trust parameters from the scary internet, only allow the white list through.
      def remision_params
        params.require(:remision).permit(:fecha_expedicion,:fecha_vencimiento,:clienteremi_id,:nota,:valor_bruto,:descuento,:subtotal,:iva,:total,
        atriremis_attributes: [:id,:referencia, :descripcion, :lote, :iva, :cantidad, :unidad, :valor_unitario, :valor_total, :_destroy])
      end

end
