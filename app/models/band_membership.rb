class BandMembership < ActiveRecord::Base
  attr_accessible :band_id, :musician_id
  belongs_to :musician
  belongs_to :band
end
