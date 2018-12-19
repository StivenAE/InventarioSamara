class RemisionesController < ApplicationController

    def index
      @clienteremis = Clienteremi.all

      respond_to do |format|
        format.html
        format.json
        format.pdf do

            render template: "remisiones/pdfRemi", pdf: 'Pdf'
        end
      end
    end
end
