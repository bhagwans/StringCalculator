require "spec_helper"

require_relative "../../lib/calculator"

RSpec.describe "Calculator" do
    it "returns the addition of empty string" do
        expect(Calculator.add("")).to eq(0)
    end

    it "returns the addition of '1'" do
        expect(Calculator.add("1")).to eq(1)
    end

    it "returns the addition of '1,5'" do
        expect(Calculator.add("1,5")).to eq(6)
    end

    it "returns the addition of any numbers" do
        expect(Calculator.add("1,2,3,4,5")).to eq(15)
    end

    it "returns the addition of string numbers with multiple delimeters" do
        expect(Calculator.add("1\n2,3")).to eq(6)
    end

    it "returns the addition of string numbers suporting different delimiters" do
        expect(Calculator.add("//;\n1;2")).to eq(3)
    end

    it "returns error on sending negative numbers" do
        expect(Calculator.add("-1,-2")).to eq("negative numbers not allowed -1,-2")
    end

    it "returns error on sending negative numbers" do
        expect(Calculator.add("-1,-2,-3,-4")).to eq("negative numbers not allowed -1,-2,-3,-4")
    end

end