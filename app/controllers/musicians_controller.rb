class MusiciansController < ApplicationController
  def new
    @musicians = Musician.all
  end

  def create
    name = params[:name]
    Musician.create(name: name)
    redirect_to musicians_path
  end

  def index
    @musicians = Musician.all
  end

  def edit
    @musician = Musician.find(params[:id])
  end

  def update
    musician = Musician.find(params[:id])
    musician.name = params[:musician][:name]
    musician.save
    redirect_to musician_path(musician)
  end

  def show
    @musician = Musician.find(params[:id])
  end

  def destroy
    Musician.find(params[:id]).destroy
    redirect_to musicians_path
  end

end