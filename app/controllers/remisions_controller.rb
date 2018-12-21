class RemisionsController < ApplicationController

    def index
      @clienteremis = Clienteremi.all
      respond_to do |format|
        format.html
        format.json
        format.pdf do
            render template: "remisions/pdfRemi", pdf: 'Pdf'
        end
      end
    end
end
