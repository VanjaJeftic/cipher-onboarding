require "cipher"

describe Cipher do

  context "ROT5 - given 'omg'" do
    it "returns trl" do
      cipher_instance = Cipher.new()
      expect(cipher_instance.method_cipher("omg", 5)).to eql("trl")
    end
  end

  context "ROT0 - given 'c'" do
    it "returns c" do
      cipher_instance = Cipher.new()
      expect(cipher_instance.method_cipher("c", 0)).to eql("c")
    end
  end

  context "ROT26 - given 'Cool'" do
    it "returns Cool" do
      cipher_instance = Cipher.new()
      expect(cipher_instance.method_cipher("Cool", 26)).to eql("Cool")
    end
  end

  context "ROT13 - given 'The quick brown fox jumps over the lazy dog.'" do
    it "returns Gur dhvpx oebja sbk whzcf bire gur ynml qbt." do
      cipher_instance = Cipher.new()
      expect(cipher_instance.method_cipher("The quick brown fox jumps over the lazy dog.", 13)).to eql("Gur dhvpx oebja sbk whzcf bire gur ynml qbt.")
    end
  end

  context "ROT13 - given 'Gur dhvpx oebja sbk whzcf bire gur ynml qbt.'" do
    it "returns The quick brown fox jumps over the lazy dog." do
      cipher_instance = Cipher.new()
      expect(cipher_instance.method_cipher("Gur dhvpx oebja sbk whzcf bire gur ynml qbt.", 13)).to eql("The quick brown fox jumps over the lazy dog.")
    end
  end

  context "ROT13 - given 'abcdefghijklmnopqrstuvwxyz'" do
    it "returns nopqrstuvwxyzabcdefghijklm" do
      cipher_instance = Cipher.new()
      expect(cipher_instance.method_cipher("abcdefghijklmnopqrstuvwxyz", 13)).to eql("nopqrstuvwxyzabcdefghijklm")
    end
  end

  context "ROT2 - given 'abc!!!{}[].!....45634765b'" do
    it "returns cde!!!{}[].!....45634765d" do
      cipher_instance = Cipher.new()
      expect(cipher_instance.method_cipher("abc!!!{}[].!....45634765b", 2)).to eql("cde!!!{}[].!....45634765d")
    end
  end

  context "ROT15 - given '1234567890'" do
    it "returns 1234567890" do
      cipher_instance = Cipher.new()
      expect(cipher_instance.method_cipher("1234567890", 15)).to eql("1234567890")
    end
  end

end