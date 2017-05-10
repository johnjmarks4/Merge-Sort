def merge(left, right, ary)
  
  ln = left.length
  rn = right.length
  i = 0
  j = 0
  k = 0
    
    
  while i < ln && j < rn
    
      if left[i] < right[j]
        ary[k] = left[i]
        i += 1
      else
        ary[k] = right[j]
        j += 1
      end
      k += 1
  end
  
  while i < ln
    ary[k] = left[i]
    i += 1
    k += 1
  end
  
  while j < rn
    ary[k] = right[j]
    j += 1
    k += 1
  end
  ary
end

def merge_sort(ary)
  
  n = ary.length
  
  if n < 2
    n
  else
    mid = n / 2
    left = []
    right = []
    (n - mid).times do
      left << " "
      right << " "
    end
    i = 0
    (i..mid - 1).each do
      left[i] = ary[i]
      i += 1
    end
    
    (mid..n - 1).each do
      right[i - mid] = ary[i]
      i += 1
    end
    
    merge_sort(left)
    merge_sort(right)
    merge(left, right, ary)
    
  end
  ary
end


merge_sort([2,5,9,1,8,7,3,10])