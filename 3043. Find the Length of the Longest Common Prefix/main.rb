# @param {Integer[]} arr1
# @param {Integer[]} arr2
# @return {Integer}
class TrieNode
    attr_accessor :children, :is_end
    
    def initialize
      @children = {}
      @is_end = false
    end
  end
  
  class Trie
    def initialize
      @root = TrieNode.new
    end
    
    def insert(word)
      node = @root
      word.each_char do |char|
        node.children[char] ||= TrieNode.new
        node = node.children[char]
      end
      node.is_end = true
    end
    
    def longest_common_prefix(word)
      node = @root
      prefix = ''
      word.each_char do |char|
        return prefix unless node.children[char]
        node = node.children[char]
        prefix += char
        #return prefix unless node.children.size == 1 && !node.is_end
      end
      prefix
    end
  end
  
  def longest_common_prefix(arr1, arr2)
      trie = Trie.new
      arr1.each{|n| trie.insert(n.to_s)}
      
      res = 0
      arr2.each do|n|
          pre_fix = trie.longest_common_prefix(n.to_s)
          res = [res, pre_fix.length].max
      end
      res
  end