class Movie
  attr_accessor :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    actor&.fall_in_ladder
    actor&.ready?
  end
end

RSpec.describe Movie do
  let(:actor) { double('StuntMan', ready?: true, fall_in_ladder: 'Oh im falling in ladders') }
  subject { described_class.new(actor) }
  describe 'shooting action' do
    it 'can fall in ladder' do
      expect(actor).to receive(:fall_in_ladder)
      expect(actor).to receive(:ready?)
      subject.start_shooting
    end
  end
end
