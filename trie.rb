require 'pry'
class Trie < Hash

  def add(x)
    self[x] = Trie.new
  end

  def <<(x)
    add x
  end

end

binding.pry
