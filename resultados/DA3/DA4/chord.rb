class Chord

	attr_accessor :chords

	def initialize
		@chords = File.new('test_file.txt', 'r')
	end
end

chord = Chord.new
puts chord.chords