class ProgrammersController < ApplicationController
    def index
        programmers = Programmer.all 
        render json: programmers
    end
  
    def create
    end
  end
