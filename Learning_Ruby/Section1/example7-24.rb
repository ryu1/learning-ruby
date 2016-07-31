# frozen_string_literal: true

def foo_bar_baz
  yield 'foo'
  yield 'bar'
  yield 'baz'
end

foo_bar_baz do |item|
  puts item
end

def foo_bar_baz2
  %w(foo bar baz) .each do |item|
    yield item
  end
end

foo_bar_baz2 do |item|
  puts item
end
