require "spec_helper"
require_relative "../lib/roman"

describe Roman do
  context "when numeral number" do

    before do
      @converte = Roman.new
    end

    it "1 is passed should return I" do
      expect(@converte.convert_number_to_roman(1)).to eq('I')
    end

    it "2 is passed should return II" do
      expect(@converte.convert_number_to_roman(2)).to eq('II')
    end

    it "3 is passed should return III" do
      expect(@converte.convert_number_to_roman(3)).to eq('III')
    end

    it "4 is passed should return IV" do
      expect(@converte.convert_number_to_roman(4)).to eq('IV')
    end

    it "10 is passed should return IV" do
      expect(@converte.convert_number_to_roman(10)).to eq('X')
    end

    it "13 is passed should return IV" do
      expect(@converte.convert_number_to_roman(13)).to eq('XIII')
    end

    it "36 is passed should return XXXVI" do
      expect(@converte.convert_number_to_roman(36)).to eq('XXXVI')
    end

    it "40 is passed should return XL" do
      expect(@converte.convert_number_to_roman(40)).to eq('XL')
    end

    it "41 is passed should return XL" do
      expect(@converte.convert_number_to_roman(41)).to eq('XLI')
    end

    it "297 is passed should return CCXCVII" do
      expect(@converte.convert_number_to_roman(297)).to eq('CCXCVII')
    end

    it "531 is passed should return DXXXI" do
      expect(@converte.convert_number_to_roman(531)).to eq('DXXXI')
    end

    it "1996 is passed should return MCMXCVI" do
      expect(@converte.convert_number_to_roman(1996)).to eq('MCMXCVI')
    end

    it "1999 is passed should return MCMXCVI" do
      expect(@converte.convert_number_to_roman(1999)).to eq('MCMXCIX')
    end

    it "2012 is passed should return MMXII" do
      expect(@converte.convert_number_to_roman(2012)).to eq('MMXII')
    end

  end
end