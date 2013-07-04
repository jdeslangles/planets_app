class PlanetsController < ApplicationController

  def index
    # @planets = Planet.order('orbit DESC')
    # @planets = Planet.order(:name)
    # @planets = Planet.potentially_habitable
    # @planets = Planet.where("name like '%e%'")
    @planets = Planet.all
  end


  def show
    @planet = Planet.find(params[:id])
  end


  def new
    # this is the GET to get the form
    @planet = Planet.new
  end


  def create
    #this is the POST to post the form
    # you HAVE to create a new planet in this form as well, and populate it with new params
    @planet = Planet.new(params[:planet])
    @planet.save #unnecessary if "Planet.create"
    redirect_to @planet
    # if @planet -> linking to planet_show_path, now planet_path in routes.rb
  end

  def edit
    @planet = Planet.find(params[:id])
  end

  def update
    @planet = Planet.find(params[:id])
    @planet.update_attributes(params[:planet])
    redirect_to @planet
  end

  def destroy
    @planet = Planet.find(params[:id])
    @planet.destroy
    redirect_to planets_path
  end

end




