class Musician < ActiveRecord::Base
  attr_accessible :name

  def join(band)
    BandMembership.create({
      musician_id: self.id,
      band_id: band.id
      })
  end
end
