# frozen_string_literal: true

require 'cipher'

describe Cipher do
  context "ROT5 - given 'omg'" do
    it 'returns trl' do
      cipher = Cipher.new(5)
      expect(cipher.rotation('omg')).to eql('trl')
    end
  end

  context "ROT0 - given 'c'" do
    it 'returns c' do
      cipher = Cipher.new(0)
      expect(cipher.rotation('c')).to eql('c')
    end
  end

  context "ROT26 - given 'Cool'" do
    it 'returns Cool' do
      cipher = Cipher.new(26)
      expect(cipher.rotation('Cool')).to eql('Cool')
    end
  end

  context "ROT13 - given 'The quick brown fox jumps over the lazy dog.'" do
    it 'returns Gur dhvpx oebja sbk whzcf bire gur ynml qbt.' do
      cipher = Cipher.new(13)
      string_before = 'The quick brown fox jumps over the lazy dog.'
      string_after = 'Gur dhvpx oebja sbk whzcf bire gur ynml qbt.'
      expect(cipher.rotation(string_before)).to eql(string_after)
    end
  end

  context "ROT13 - given 'Gur dhvpx oebja sbk whzcf bire gur ynml qbt.'" do
    it 'returns The quick brown fox jumps over the lazy dog.' do
      cipher = Cipher.new(13)
      string_before = 'Gur dhvpx oebja sbk whzcf bire gur ynml qbt.'
      string_after = 'The quick brown fox jumps over the lazy dog.'
      expect(cipher.rotation(string_before)).to eql(string_after)
    end
  end

  context "ROT13 - given 'abcdefghijklmnopqrstuvwxyz'" do
    it 'returns nopqrstuvwxyzabcdefghijklm' do
      cipher = Cipher.new(13)
      expect(cipher.rotation('abcdefghijklmnopqrstuvwxyz')).to eql('nopqrstuvwxyzabcdefghijklm')
    end
  end

  context "ROT2 - given 'abc!!!{}[].!....45634765b'" do
    it 'returns cde!!!{}[].!....45634765d' do
      cipher = Cipher.new(2)
      expect(cipher.rotation('abc!!!{}[].!....45634765b')).to eql('cde!!!{}[].!....45634765d')
    end
  end

  context "ROT15 - given '1234567890'" do
    it 'returns 1234567890' do
      cipher = Cipher.new(15)
      expect(cipher.rotation('1234567890')).to eql('1234567890')
    end
  end

  context "ROT1 - given 'ABC'" do
    it 'BCD' do
      cipher = Cipher.new(1)
      expect(cipher.rotation('ABC')).to eql('BCD')
    end
  end
end
