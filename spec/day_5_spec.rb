require_relative "../app/day_5.rb"

RSpec.describe(Day_5) do
  subject(:day) { described_class.new }

  before do
    example = <<~EOF
      ugknbfddgicrmopn
      aaa
      jchzalrnumimnmhp
      haegwjzuvuyypxyu
      dvszwmarrgswjxmb
    EOF

    allow(File).to receive(:readlines).and_return(example.split("\n"))
  end

  it "ugknbfddgicrmopn is nice" do
    expect(day.nice("ugknbfddgicrmopn")).to eq(true)
  end

  it "jchzalrnumimnmhp is naughty" do
    expect(day.nice("jchzalrnumimnmhp")).to eq(false)
  end
end
