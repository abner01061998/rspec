RSpec.describe 'nested hooks' do 
  before(:context) do
    puts 'OUTER Before Context'
  end

  after(:context) do
    puts 'OUTER After Context'
  end
  
  it 'does basic math' do
    expect(1 + 1).to eq(2)
  end

  context "with condition A" do
    before(:context) do
      puts 'INNER Before Context'
    end
  
    after(:context) do
      puts 'INNER After Context'
    end

    it 'does some more basic math' do
      expect(5 + 1).to eq(6)
    end

    it 'does some sustraction with basic math' do
      expect(5 - 3).to eq(3)
    end
  end
  
end