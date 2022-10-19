class Movie
  attr_accessor :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    @actor&.fall_in_ladder
    @actor&.ready?
    @actor&.act
    @actor&.act
  end
end

RSpec.describe Movie do
  let(:actor) { double('StuntMan', ready?: true, fall_in_ladder: 'Oh im falling in ladders', act: 'acting') }
  subject { described_class.new(actor) }

  describe 'shooting action' do
    it 'can fall in ladder' do
      expect(actor).to receive(:fall_in_ladder).once
      expect(actor).to receive(:ready?).once
      expect(actor).to receive(:act).twice
      subject.start_shooting
    end
  end
end
