# frozen_string_literal: true

require 'cipher'

describe Cipher do
  context "ROT5 - given 'omg'" do
    it 'returns trl' do
      cipher_instance = Cipher.new(5)
      expect(cipher_instance.method_cipher('omg')).to eql('trl')
    end
  end

  context "ROT0 - given 'c'" do
    it 'returns c' do
      cipher_instance = Cipher.new(0)
      expect(cipher_instance.method_cipher('c')).to eql('c')
    end
  end

  context "ROT26 - given 'Cool'" do
    it 'returns Cool' do
      cipher_instance = Cipher.new(26)
      expect(cipher_instance.method_cipher('Cool')).to eql('Cool')
    end
  end

  context "ROT13 - given 'The quick brown fox jumps over the lazy dog.'" do
    it 'returns Gur dhvpx oebja sbk whzcf bire gur ynml qbt.' do
      cipher_instance = Cipher.new(13)
      string_before = 'The quick brown fox jumps over the lazy dog.'
      string_after = 'Gur dhvpx oebja sbk whzcf bire gur ynml qbt.'
      expect(cipher_instance.method_cipher(string_before)).to eql(string_after)
    end
  end

  context "ROT13 - given 'Gur dhvpx oebja sbk whzcf bire gur ynml qbt.'" do
    it 'returns The quick brown fox jumps over the lazy dog.' do
      cipher_instance = Cipher.new(13)
      string_before = 'Gur dhvpx oebja sbk whzcf bire gur ynml qbt.'
      string_after = 'The quick brown fox jumps over the lazy dog.'
      expect(cipher_instance.method_cipher(string_before)).to eql(string_after)
    end
  end

  context "ROT13 - given 'abcdefghijklmnopqrstuvwxyz'" do
    it 'returns nopqrstuvwxyzabcdefghijklm' do
      cipher_instance = Cipher.new(13)
      expect(cipher_instance.method_cipher('abcdefghijklmnopqrstuvwxyz')).to eql('nopqrstuvwxyzabcdefghijklm')
    end
  end

  context "ROT2 - given 'abc!!!{}[].!....45634765b'" do
    it 'returns cde!!!{}[].!....45634765d' do
      cipher_instance = Cipher.new(2)
      expect(cipher_instance.method_cipher('abc!!!{}[].!....45634765b')).to eql('cde!!!{}[].!....45634765d')
    end
  end

  context "ROT15 - given '1234567890'" do
    it 'returns 1234567890' do
      cipher_instance = Cipher.new(15)
      expect(cipher_instance.method_cipher('1234567890')).to eql('1234567890')
    end
  end

  context "ROT1 - given 'ABC'" do
    it 'BCD' do
      cipher_instance = Cipher.new(1)
      expect(cipher_instance.method_cipher('ABC')).to eql('BCD')
    end
  end
end
