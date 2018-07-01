RSpec.describe Song do
  describe 'Validations' do
    it 'is invalid without a title' do
      song = Song.new(length: 123, play_count: 2)

      expect(song).to_not be_valid
    end
    # tests that a song cannot be created without a length
    it 'is invalid without a length' do
      song = Song.new(title: "Song1", play_count: 4)

      expect(song).to_not be_valid
    end
  end
  describe 'Class Methods' do
    describe '.total_play_count' do
      it 'returns total play counts for all songs' do
        Song.create(title: "Song 1", length: 180, play_count: 3)
        Song.create(title: "Song 2", length: 220, play_count: 4)

        expect(Song.total_play_count).to eq(7)
      end
    end
    # a test for an .average_play_count class method
    describe '.average_play_count' do
      it 'returns average play count for all songs' do
        Song.create(title: "Song 1", length: 170, play_count: 4)
        Song.create(title: "Song 2", length: 140, play_count: 6)
        Song.create(title: "Song 3", length: 190, play_count: 8)

        expect(Song.average_play_count).to eq(6)
      end
    end


  end
end
