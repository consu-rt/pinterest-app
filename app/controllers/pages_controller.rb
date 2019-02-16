class PagesController < ApplicationController
  def index() end
  def home
  	#variable de instancia disponible en toda la app
  	#si no tuviera @ no llega a la vista
  	@pins = Pin.all
   end
end
