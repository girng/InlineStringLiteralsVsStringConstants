require "benchmark"

CONST_1 = "This item does not exist? Not sure, you might have to relog."

CONST_2 = "Must have a selected character before you can list items."
CONST_3 = "List amount must be atleast 17."
CONST_4 = "Must have a selected character before listing an item."
CONST_5 = "You do not have enough gold to list this item."

CONST_6 = "Can't list an equipped item."
CONST_7 = "Can't list an item that is in another item."
CONST_8 = "Can't list an item that has items in it."

CONST_9 = "You may only list up to #{1} items per character. Items in your mailbox count for this as well. I don't know why, but they do."

CONST_10 = "This item is already in the market."

Benchmark.ips do |x|
  x.report("string_constants") { string_constant }
  x.report("inline_string_literals") { inline_string_literals }
end

def string_constant
  begin
    # ROFL
    rand_value = rand

    raise CONST_1 if rand_value > rand

    raise CONST_2 if rand_value < rand
    raise CONST_3 if rand_value > rand
    raise CONST_4 if rand_value < rand
    raise CONST_5 if rand_value > rand

    raise CONST_6 if rand_value < rand
    raise CONST_7 if rand_value > rand
    raise CONST_8 if rand_value < rand

    raise CONST_9 if rand_value > rand

    raise CONST_10 if rand_value < rand
  rescue
  end
end

def inline_string_literals
  begin
    # ROFL
    rand_value = rand

    raise "This item does not exist? Not sure, you might have to relog." if rand_value > rand

    raise "Must have a selected character before you can list items." if rand_value < rand
    raise "List amount must be atleast 17." if rand_value > rand
    raise "Must have a selected character before listing an item." if rand_value < rand
    raise "You do not have enough gold to list this item." if rand_value > rand

    raise "Can't list an equipped item." if rand_value < rand
    raise "Can't list an item that is in another item." if rand_value > rand
    raise "Can't list an item that has items in it." if rand_value < rand

    raise "You may only list up to #{1} items per character. Items in your mailbox count for this as well. I don't know why, but they do." if rand_value > rand

    raise "This item is already in the market." if rand_value < rand
  rescue
  end
end
