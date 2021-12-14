class ProyectosController < ApplicationController
    before_action :set_proyecto, only: [:show, :edit, :update, :destroy]
    

    def index
        if params[:search]
            @proyectos = Proyecto.search(params[:search])
            render json: @proyecto
        else
            @proyectos = Proyecto.all
        end
    end

    def show
    end

    def new
        @proyecto = Proyecto.new
    end

    def edit
    end

    def create
        @proyecto = Proyecto.new(proyecto_params)
        
    
        respond_to do |format|
          if @proyecto.save
            format.html { redirect_to @proyecto, notice: 'Proyecto creado'}
            format.json { render :show, status: :created, location: @proyecto }
          else
            format.html { render :new }
            format.json { render json: @proyecto.errors, status: :unprocessable_entity }
          end
        end
    end

    def update
        respond_to do |format|
          if @proyecto.update(proyecto_params)
            format.html { redirect_to @proyecto, notice: 'Proyecto creado'}
            format.json { render :show, status: :created, location: @proyecto }
          else
            format.html { render :new }
            format.json { render json: @proyecto.errors, status: :unprocessable_entity }
          end
                
        end
    end

    def destroy
        @proyecto.destroy
        respond_to do |format|
          format.html { redirect_to proyectos_url, notice: 'Proyecto was successfully destroyed.' }
          format.json { head :no_content }
        end
    end

    private
    def set_proyecto
      @proyecto = Proyecto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def proyecto_params
      params.require(:proyecto).permit(:name, :description, :starting_date, :ending_date, :state)
    end


end
