require_relative 'spec_helper'
require_relative '../lib/calculator'

describe Calculator do
  before(:context) do
    @Calculator = Calculator.new(99)
  end

  # Tests go here
  describe "Initialization" do
    it "is an instance of this dumb calculator" do
      expect(@Calculator).to be_instance_of(Calculator)
    end
  end

  describe "Reset function" do
    #reset calculator
    it "has been restted" do
      @Calculator.reset(0)
      expect(@Calculator.result).to eq(0)
    end
  end

  describe "Addition" do
    it "has been added" do
      @Calculator.add(88)
      expect(@Calculator.result).to eq(88)
    end
  end

  describe "Subtraction" do
    it "has been subtracted" do
      @Calculator.subtract(50)
      expect(@Calculator.result).to eq(38)
    end
  end

  describe "Multiplication" do
    it "has been timesed" do
      @Calculator.multiply(100)
      expect(@Calculator.result).to eq(3800)
    end
  end

  describe "Division" do
    it "has been divided" do
      @Calculator.divide(3800)
      expect(@Calculator.result).to eq(1)
    end
  end

  describe "Combo" do
    it "has been comboed" do
      @Calculator.add(9).subtract(5).multiply(4).divide(20)
      expect(@Calculator.result).to eq(1)
    end
  end

  describe "Operation" do
    it "has been operated" do
      @Calculator.operation("add", 9)
      expect(@Calculator.result).to eq(10)
    end
    it "has been operated" do
      @Calculator.operation("subtract", 5)
      expect(@Calculator.result).to eq(5)
    end
    it "has been operated" do
      @Calculator.operation("multiply", 10)
      expect(@Calculator.result).to eq(50)
    end
  end

  describe "Undo" do
    it "has been undone" do
      @Calculator.undo()
      expect(@Calculator.result).to eq(5)
    end
  end

  describe "Redo" do
    it "has been redone" do
      @Calculator.redo()
      expect(@Calculator.result).to eq(50)
    end

    it "should not be redone more than 1 times" do
      @Calculator.redo()
      expect(@Calculator.result).to eq(50)
    end
  end
end
