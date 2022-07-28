require_relative '../solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  context 'check for factorial method' do
    it 'check for valid result' do
      expect(@solver.factorial(5)).to eq(120)
      expect(@solver.factorial(4)).to eq(24)
      expect(@solver.factorial(0)).to eq(1)
    end
    it 'check for Exception' do
      expect(@solver.factorial(-5)).to raise_error('Integer must be a posetive whole number')
    end
  end

  context 'check reverse method' do
    it 'reverses the inputted string' do
      expect(@solver.reverse('hello')).to eq('hello')
      expect(@solver.reverse('red')).to eq('der')
      expect(@solver.reverse('chair')).to eq('riahc')
    end
  end
end
