class BandMembershipsController < ApplicationController
  def create
    musician = Musician.find(params[:musician_id])
    band = Band.find(params[:band_id])
    musician.join(band)
    redirect_to band_path(band)
  end
end