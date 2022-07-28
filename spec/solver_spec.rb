require_relative '../solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  context 'check for factorial method' do
    it 'should return valid result' do
      expect(@solver.factorial(5)).to eq(120)
      expect(@solver.factorial(4)).to eq(24)
      expect(@solver.factorial(0)).to eq(1)
    end
    it 'should throw an Exception' do
      expect { @solver.factorial(-5) }.to raise_error(Exception).with_message('Integer must be a positive whole number')
    end
  end

  context 'check reverse method' do
    it 'the reverse method is called and accepts a single string parameter' do
      solver_mock = double('mock_object')
      allow(solver_mock).to receive(:reverse)
      expect(solver_mock).to receive(:reverse).with('hello')
      solver_mock.reverse('hello')
    end

    it 'reverses the inputted string' do
      expect(@solver.reverse('hello')).to eq('olleh')
      expect(@solver.reverse('red')).to eq('der')
      expect(@solver.reverse('chair')).to eq('riahc')
    end
  end

  context 'check fizzbuzz method' do
    it 'should return instance of a String' do
      expect(@solver.fizzbuzz(15)).to be_instance_of(String)
    end

    it 'should return the appropriate string' do
      expect(@solver.fizzbuzz(15)).to eq('fizzbuzz')
      expect(@solver.fizzbuzz(3)).to eq('fizz')
      expect(@solver.fizzbuzz(5)).to eq('buzz')
      expect(@solver.fizzbuzz(7)).to eq('7')
    end
  end
end
