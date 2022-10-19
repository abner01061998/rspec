RSpec.describe 'allow method review' do 
  subject { [1, 2, 3] }
  it 'can stub oner or more methods on a real object' do
    allow(subject).to receive(:sum).and_return(10)
    expect(subject.sum).to eq(10)
    
    subject.push(4)
    expect(subject.length).to eq(4)
  end

  it 'can return multiple retunr values in sequence' do
    mock_array = double
    allow(mock_array).to receive(:pop).and_return(:c, :b, nil)
    expect(mock_array.pop).to eq(:c)
    expect(mock_array.pop).to eq(:b)
    expect(mock_array.pop).to be_nil
    expect(mock_array.pop).to be_nil
    expect(mock_array.pop).to be_nil
  end
end