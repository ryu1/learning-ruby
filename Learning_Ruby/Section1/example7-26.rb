# frozen_string_literal: true

def foo_bar_baz3
  return enum_for(:foo_bar_baz3) unless block_given?
  %w(foo bar baz).each do |item|
    yield item
  end
end

foo_bar_baz3 do |item|
  puts item
end

for item in foo_bar_baz3  # rubocop:disable all
  puts item
end
