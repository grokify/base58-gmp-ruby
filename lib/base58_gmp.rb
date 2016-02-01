# Base58GMP
# Copyright (c) 2011-2016 John Wang
# http://johnwang.com
# Distributed under the MIT license as included with this plugin.

require 'digest/md5'
require 'gmp'

class Base58GMP
  VERSION = '0.0.7'

  ALPHABETS   = {
    'bitcoin' => '123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz',
    'flickr'  => '123456789abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ',
    'gmp'     => '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuv'
  }
  
  DEFAULT_ALPHABET = 'flickr'
  GMP_ALPHABET     = 'gmp'

  def self.integer_to_base58(integer, alphabet=DEFAULT_ALPHABET)
    base58 = integer.is_a?(GMP::Z)     ?
               integer.to_s(base = 58) :
               GMP::Z(integer).to_s(base = 58)

    alphabet.is_a?(String) && alphabet.downcase == GMP_ALPHABET ?
      base58 :
      from_to(base58, GMP_ALPHABET, alphabet)
  end

  def self.base58_to_integer(base58, alphabet=DEFAULT_ALPHABET)
    unless base58.is_a?(String)
      raise ArgumentError, 'Base58 argument is not a string.'
    end

    unless alphabet.is_a?(String) && alphabet.downcase == GMP_ALPHABET
      base58 = from_to(base58, alphabet, GMP_ALPHABET)
    end

    GMP::Z.new(base58, 58)
  end

  def self.from_to(base58, from_alphabet, to_alphabet)
    unless base58.is_a?(String)
      raise ArgumentError, 'Base58 argument is not a string.'
    end

    unless (
      from_alphabet.is_a?(String) &&
      from_digits = ALPHABETS[from_alphabet.downcase]
    )
      raise ArgumentError, 'From encoding is not valid.'
    end

    unless (
      to_alphabet.is_a?(String) &&
      to_digits = ALPHABETS[to_alphabet.downcase]
    )
      raise ArgumentError, 'To encoding is not valid.'
    end

    from_digits != to_digits ?
      base58.tr(from_digits, to_digits) :
      base58
  end

  def self.md5_base58(data, alphabet=DEFAULT_ALPHABET)
    integer_to_base58(Digest::MD5.hexdigest(data).hex, alphabet)
  end

  class << self
    alias_method :encode, :integer_to_base58
    alias_method :decode, :base58_to_integer
    alias_method :md5, :md5_base58
  end

end
