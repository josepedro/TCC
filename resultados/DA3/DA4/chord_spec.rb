require './chord'

describe Chord do
  
  describe 'instance and chords' do
  	before(:each) {@chords = Chord.new}
  		describe 'when new' do
  			subject{@chords}
  			it{should be}
  		end
  		describe 'when get a chords array' do
  			subject{@chords}
  			it{subject.chords.length.should eq(144)}
  		end
  end

end