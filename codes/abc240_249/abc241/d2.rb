# BinaryTrie
class BinaryTrie
  def initialize(bit_depth)
    @root = create_node
    @bit_start = 1 << (bit_depth - 1)
  end

  def insert(x)
    update_node(@root, x, @bit_start, 1)
  end

  def pop_min(mask = 0)
    traverse_and_update(@root, mask, @bit_start, -1, find_min: true)
  end

  def get_min(mask = 0)
    traverse_and_update(@root, mask, @bit_start, 0, find_min: true)
  end

  def get_kth_min(k = 1)
    find_kth_min(@root, k, @bit_start)
  end

  def erase(x)
    update_node(@root, x, @bit_start, -1)
  end

  def less_x(x)
    count_less_x(@root, x, @bit_start)
  end

  def less_x_mask(x, mask = 0)
    count_less_x_mask(@root, x, mask, @bit_start)
  end

  def is_exist(x)
    find_x(@root, x, @bit_start)
  end

  def merge(other)
    @root = merge_nodes(@root, other.root)
  end

  private

  def create_node
    [nil, nil, 0]
  end

  def update_node(node, x, b, delta)
    node[2] += delta
    return if b == 0

    i = (x & b) != 0 ? 1 : 0
    node[i] = create_node if node[i].nil?
    update_node(node[i], x, b >> 1, delta)
  end

  def traverse_and_update(node, mask, b, delta, find_min: false)
    return 0 if b == 0

    i = find_min ? ((mask & b) != 0 ? 1 : 0) : (mask & b) != 0
    unless node[i]
      i ^= 1 unless find_min
    end

    val = traverse_and_update(node[i], mask, b >> 1, delta, find_min: find_min)
    node[2] += delta unless delta == 0
    (i << (Math.log2(b).to_i)) | val
  end

  def find_kth_min(node, k, b)
    return 0 if b == 0

    left_count = node[0] ? node[0][2] : 0
    if k <= left_count
      find_kth_min(node[0], k, b >> 1)
    else
      b >> 1 | find_kth_min(node[1], k - left_count, b >> 1)
    end
  end

  def count_less_x(node, x, b)
    return 0 unless node

    i = (x & b) != 0 ? 1 : 0
    if i == 0
      count_less_x(node[0], x, b >> 1)
    else
      left_count = node[0] ? node[0][2] : 0
      left_count + count_less_x(node[1], x, b >> 1)
    end
  end

  def count_less_x_mask(node, x, mask, b)
    return 0 unless node

    i = (x & b) != 0 ? 1 : 0
    mm = (mask & b) != 0 ? 1 : 0
    imm = i ^ mm
    count = imm == 0 ? 0 : (node[imm ^ 1] ? node[imm ^ 1][2] : 0)
    count + count_less_x_mask(node[imm], x, mask, b >> 1)
  end

  def find_x(node, x, b)
    return false unless node
    return true if b == 0

    i = (x & b) != 0 ? 1 : 0
    find_x(node[i], x, b >> 1)
  end

  def merge_nodes(node1, node2)
    return node2 unless node1
    return node1 unless node2
    merged_node = create_node
    merged_node[0] = merge_nodes(node1[0], node2[0])
    merged_node[1] = merge_nodes(node1[1], node2[1])
    merged_node[2] = node1[2] + node2[2]
    merged_node
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
      puts bi.get_kth_min(num-k+1) * 2
    end
  else
    num = bi.less_x(x)
    if num + k > c
      puts -1
    else
      puts bi.get_kth_min(num+k) * 2
    end
  end
  i += 1
end
