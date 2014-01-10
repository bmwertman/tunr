class Musician < ActiveRecord::Base
  attr_accessible :name
  has_many :band_memberships
  has_many :bands, through: :band_memberships

  def join(band)
    BandMembership.create({
      musician_id: self.id,
      band_id: band.id
      })
  end
end
