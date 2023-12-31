require "./app"

describe "CAESAR CIPHER" do
  it "switch letters by the next (factor giving) letter on the alphabet" do
    expect(caesar_cipher("What a String!", 5)).to eql("Bmfy f Xywnsl!")
  end
end
