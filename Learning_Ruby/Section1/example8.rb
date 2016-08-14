# frozen_string_literal: true
# Duration
class Duration
  def initialize(since, till)
    @since = since
    @until = till
  end

  def self.print(x) # def Duration.print(x)s
    p x
  end

  attr_accessor :since, :until
end

Duration.print 1
duration = Duration.new Time.now, Time.now + 3600
p duration.since
p duration.until

# String Extension
class String
  def caesar
    tr 'a-zA-Z', 'n-za-mN-ZA-M'
  end
end
puts 'Learning Ruby'.caesar
p String.superclass

class Animal; end
class Yahoo < Animal; end
class Yahoo; end
p Yahoo.superclass

# Fixnum 拡張
class Fixnum < Fixnum
  alias original_addition +
  def +(other)
    original_addition(other).succ
  end
end
p 1 + 1
p 5 + 2

Fixnum.freeze

# class Fixnum
#   def +(rhs)
#     return 5
#   end
# end
