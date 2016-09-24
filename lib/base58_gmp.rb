# Base58GMP
# Copyright (c) 2011-2016 John Wang
# http://johnwang.com
# Distributed under the MIT license as included with this gem.

require 'digest/md5'
require 'gmp'

class Base58GMP
  VERSION = '0.0.7'

  ALPHABETS = {
    bitcoin: '123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz',
    flickr:  '123456789abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ',
    ripple:  'rpshnaf39wBUDNEGHJKLM4PQRST7VWXYZ2bcdeCg65jkm8oFqi1tuvAxyz',
    gmp:     '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuv'
  }

  DEFAULT_ALPHABET = :flickr
  GMP_ALPHABET = :gmp
  BASE58_LENGTH_MD5 = 22

  def self.integer_to_base58(integer, alphabet = DEFAULT_ALPHABET)
    base58 = integer.is_a?(GMP::Z) \
           ? integer.to_s(58) \
           : GMP::Z(integer).to_s(58)

    normalize_alphabet(alphabet) == GMP_ALPHABET \
      ? base58 \
      : from_to(base58, GMP_ALPHABET, alphabet)
  end

  def self.base58_to_integer(base58, alphabet = DEFAULT_ALPHABET)
    unless base58.is_a? String
      fail ArgumentError, 'Base58 argument is not a string.'
    end

    unless normalize_alphabet(alphabet) == GMP_ALPHABET
      base58 = from_to(base58, alphabet, GMP_ALPHABET)
    end

    GMP::Z.new(base58, 58)
  end

  def self.from_to(base58, from_alphabet, to_alphabet)
    unless base58.is_a? String
      fail ArgumentError, 'Base58 argument is not a string.'
    end

    from_digits = alphabet_digits from_alphabet
    to_digits = alphabet_digits to_alphabet

    from_digits != to_digits ?
      base58.tr(from_digits, to_digits) :
      base58
  end

  def self.normalize_alphabet(alphabet)
    alphabet.to_sym.downcase
  end

  def self.alphabet_digits(alphabet)
    alphabet = normalize_alphabet alphabet

    unless ALPHABETS.key? alphabet
      fail ArgumentError, "Alphabet is invalid: #{alphabet}"
    end

    return ALPHABETS[alphabet]
  end

  def self.md5_base58(data, alphabet = DEFAULT_ALPHABET, opts = {})
    base58 = integer_to_base58(Digest::MD5.hexdigest(data).hex, alphabet)

    opts.key?(:pad) && opts[:pad] \
      ? base58.rjust(BASE58_LENGTH_MD5, alphabet_digits(alphabet)[0]) \
      : base58
  end

  class << self
    alias_method :encode, :integer_to_base58
    alias_method :decode, :base58_to_integer
    alias_method :md5, :md5_base58
  end
end
