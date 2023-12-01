# typed: strict
require 'bundler/setup'
Bundler.require(:default, :development)

class Suit < T::Enum
  extend T::Sig

  enums do
    Spades = new
    Hearts = new
    Clubs = new
    Diamonds = new
  end

  sig { returns(T.class_of(Suit)) }
  def self.random
    T.cast(values.sample, self)
  end
end
