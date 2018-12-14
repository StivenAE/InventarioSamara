class RemisionesController < ApplicationController

    def index
      respond_to do |format|
        format.html
        format.json
        format.pdf do
          @clienteremis = Clienteremi.all
          render template: "remisiones/pdfRemi", pdf: 'Pdf'
        end


      end
    end
end
