RSpec.describe 'before and after hooks' do
  before(:example) do
    puts 'Before example'
  end

  # Mostly used when:
  # Acces an element previusly created
  # Test speed
  after(:example) do
    puts 'After example'
  end

  before(:context) do
    puts '->Before context'
  end

  after(:context) do
    puts '<-After context'
  end

  it 'is just antoher random example' do
    expect(4 * 5).to eq(20)
  end

  it 'is just a random example' do
    expect(3 - 2).to eq(1)
  end
end