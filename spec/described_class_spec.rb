class King
  attr_accessor :name

  def initialize(name) 
    @name = name
  end
end

RSpec.describe King do
  subject { described_class.new('Boris') } # Instead of using King.new you can use described_classs
  let(:louis) { described_class.new 'Louis' } # Instead of using King.new you can use described_classs

  it 'represents a great person' do
    expect(subject.name).to eq('Boris')
    expect(louis.name).to eq('Louis')
  end
end