class PinsController < ApplicationController
   
before_action :set_pin, only: [:like, :destroy, :edit, :update, :show]



   def create
	@pin = Pin.new (pin_params) #guardando instancia de pin con los parametros
	@pin.user = current_user
	if @pin.save! #guardando pin  !excclamacion para ver error
		redirect_to pins_path 
	else
		redirect new_pin_path, notice: 'Error'
	  end

  end


 def destroy
 	
 	
 	@pin.likes.delete_all
 	@pin.delete
 	redirect_to pins_path
  end

  def edit

  end

  def index
  	@pins= Pin.all
  end

 def like
 	
 	user = current_user
 	Like.create(pin: @pin, user: user)

 	redirect_to pins_path
 end

  def new
  	@pin = Pin.new
  end

  def update
  	@pin.update(pin_params)
  	redirect_to pins_path
  end

   def show


  end

 
 

  def pin_params
  	params.require(:pin).permit(:name, :desc, :photo)
  end


def set_pin
 	@pin= Pin.find(params[:id])
 	

 end

 end
