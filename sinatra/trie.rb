class Trie < Hash

  def add(x)
    self[x] = Trie.new
  end

  def <<(x)
    add x
  end

  def populate
    i = 1
    10.times do
      self << i
      i+= 1
    end
  end

  def second_pop
    self.keys.each {|e| self[e].populate}
  end

  def html_ol
    output = "<ul>\n"

    self.keys.each do |k|
      output +="  <li>#{k}</li>\n"

      if !self[k].empty?
        output += self[k].html_ol
      end
    end

    output += "</ul>"
    return output
  end

end


class Hash
  def html_ol
    output = "<ul>\n"

    self.keys.each do |k|
      output +="  <li>#{k}</li>\n"

      if !self[k].empty?
        output += self[k].html_ol
      end
    end

    output += "</ul>"
    return output
  end
end
