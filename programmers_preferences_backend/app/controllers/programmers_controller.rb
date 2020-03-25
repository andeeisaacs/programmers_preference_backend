class ProgrammersController < ApplicationController
    def index
        programmers = Programmer.all 
        render json: programmers
    end
  
    def create
    
        programmer = Programmers.create(programmer_params)
        if programmer.valid?
            render json: programmer
        else
            render json: programmer.errors, status: :unprocessable_entity
        end
    end
    
    def programmer_params
        params.require(:programmer).permit(:name, :age, :enjoys)
    end
  end
