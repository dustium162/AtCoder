# BinaryTrie
class BinaryTrie
  def initialize(bit_depth)
    @root = [nil, nil, 0] # [0-child, 1-child, count]
    @bit_start = 1 << (bit_depth - 1)
  end

  def insert(x)
    b = @bit_start
    node = @root
    node[2] += 1
    while b > 0
      i = (x & b) != 0 ? 1 : 0
      if node[i].nil?
        node[i] = [nil, nil, 1]
      else
        node[i][2] += 1
      end
      node = node[i]
      b >>= 1
    end
  end

  def pop_min(mask = 0)
    b = @bit_start
    node = @root
    node[2] -= 1
    ret2 = 0
    while b > 0
      i = (mask & b) != 0 ? 1 : 0
      ret2 <<= 1
      if node[i].nil?
        i ^= 1
        ret2 += 1
      end
      if node[i][2] > 1
        node[i][2] -= 1
      else
        tmp = node[i]
        node[i] = nil
        node = tmp
      end
      node = node[i]
      b >>= 1
    end
    ret2
  end

  def get_min(mask = 0)
    b = @bit_start
    node = @root
    ret2 = 0
    while b > 0
      i = (mask & b) != 0 ? 1 : 0
      ret2 <<= 1
      if node[i].nil?
        i ^= 1
        ret2 += 1
      end
      node = node[i]
      b >>= 1
    end
    ret2
  end

  def get_kth_min(k = 1)
    b = @bit_start
    node = @root
    ret2 = 0
    while b > 0
      ret2 <<= 1
      b >>= 1
      if node[0].nil? || k > node[0][2]
        k -= node[0][2] if node[0]
        node = node[1]
        ret2 += 1
      else
        node = node[0]
      end
    end
    ret2
  end

  def erase(x)
    b = @bit_start
    node = @root
    node[2] -= 1
    while b > 0
      i = (x & b) != 0 ? 1 : 0
      node[i][2] -= 1
      if node[i][2] == 0
        node[i] = nil
        return
      end
      node = node[i]
      b >>= 1
    end
  end

  def less_x(x)
    b = @bit_start
    node = @root
    ans = 0
    while b > 0
      i = (x & b) != 0 ? 1 : 0
      if i == 1 && node[0]
        ans += node[0][2]
      end
      if node[i].nil?
        return ans
      else
        node = node[i]
      end
      b >>= 1
    end
    ans
  end

  def less_x_mask(x, mask = 0)
    b = @bit_start
    node = @root
    ans = 0
    while b > 0
      i = (x & b) != 0 ? 1 : 0
      mm = (mask & b) != 0 ? 1 : 0
      imm = i ^ mm
      if node[imm]
        ans += node[imm ^ 1][2] if node[imm ^ 1] && i == 1
        node = node[imm]
      else
        return ans
      end
      b >>= 1
    end
    ans
  end

  def is_exist(x)
    b = @bit_start
    node = @root
    while b > 0
      i = (x & b) != 0 ? 1 : 0
      return false unless node[i]
      node = node[i]
      b >>= 1
    end
    true
  end

  def merge(other)
    merge_nodes(@root, other.root)
  end

  private

  def merge_nodes(node1, node2)
    return node2 unless node1
    return node1 unless node2
    [merge_nodes(node1[0], node2[0]), merge_nodes(node1[1], node2[1]), node1[2] + node2[2]]
  end
end

bi = BinaryTrie.new(60)
q = gets.to_i
c = 0
i = 0
while i < q
  t,x,k = gets.split.map(&:to_i)
  if t == 1
    bi.insert(x)
    c += 1
  elsif t == 2
    num = bi.less_x(x+1)
    if num < k
      puts -1
    else
      puts bi.get_kth_min(num-k+1)
    end
  else
    num = bi.less_x(x)
    if num + k > c
      puts -1
    else
      puts bi.get_kth_min(num+k)
    end
  end
  i += 1
end
