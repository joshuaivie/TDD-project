require_relative '../solver.rb'

describe Solver do
  context "check for factorial method" do
    before :each do
      @solver=Solver.new
    end
    it "check for valid result" do
      expect(@solver.factorial(5)).to eq(120)
      expect(@solver.factorial(4)).to eq(24)
      expect(@solver.factorial(0)).to eq(1)
    end
    it "check for Exception" do
      expect(@solver.factorial(-5)).to raise_error("Integer must be a posetive whole number")
    end
  end
end
