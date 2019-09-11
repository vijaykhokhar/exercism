class Luhn

  class << self

    def valid? number
      number = number.gsub(/\s/, '') # remove all whitespace
      number.match?(TWO_OR_MORE_DIGITS) && checksum_for(number).modulo(10).zero?
    end

    private

    TWO_OR_MORE_DIGITS = /\A\d{2,}\z/

    def double(digit)
      (double = digit * 2) > 9 ? (double - 9) : double
    end

    def checksum_for number
      number.chars.reverse.map(&:to_i).each_with_index.map { |digit, index|
        index.even? ? digit : double(digit)
      }.sum
    end

  end

end