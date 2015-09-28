class UsuariosController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]

	def index
		#@usuario=Usuario.new
    @usuarios=Usuario.all
	end

	def new
		@usuario = Usuario.new
	end

	def create
		@usuario = Usuario.new(usuario_params)
		if @usuario.save
			redirect_to @usuario
		else
			render 'new'
		end
	end

	def edit
		@usuario=Usuario.find(params[:id])
    @usuario.save
	end

	def show
    @usuario = Usuario.find(params[:id])
	end

	def update

		if @usuario.update(usuario_params)
			redirect_to @usuario
		else
			render 'edit'
		end
	end

	def destroy
		@usuario=Usuario.find(params[:id])
  	@usuario.destroy
    redirect_to  usuarios_path
	end
	
  private

	def usuario_params
		params.require(:usuario).permit(:name, :apellidoP, :apellidoM, :edad, :email)
	end

	def set_user
		@usuario = Usuario.find(params[:id])
	end
end
