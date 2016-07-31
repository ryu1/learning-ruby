# frozen_string_literal: true

def foo_bar_baz2
  %w(foo bar baz).each do |item|
    yield item
  end
end

foo_bar_baz2 do |item|
  puts item
end

# for item in foo_bar_baz2
#   puts item
# end
