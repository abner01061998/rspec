require_relative 'programming_language'
RSpec.describe ProgrammingLanguage do
  let(:language) { ProgrammingLanguage.new 'Python' }

  it 'should store the name of the language' do
    expect(language.name).to eq('Python')
  end

  context 'with no argument' do
    let(:language) { ProgrammingLanguage.new }
    it 'should return the default value' do
      expect(language.name).to eq('Ruby')
    end
  end
end