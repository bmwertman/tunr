require 'spec_helper'

describe BandMembershipsController do
  describe "if given Audio Slave" do
    before do
      @audioslave = Band.create ({
        name: "Audio Slave"
        })
      @musician = Musician.create ({
        name: "Chris Cornell"
        })
    end
    describe "when joining Audio Slave" do
      before do
        post :create, {
          :musician_id => @musician.id,
          :band_id => @audioslave.id,
        }
      end
      it "should create a band membership" do
        BandMembership.where({
          band_id: @audioslave.id,
          musician_id: @musician.id
          }).first.musician_id.should == @musician.id
      end
    end
  end
end