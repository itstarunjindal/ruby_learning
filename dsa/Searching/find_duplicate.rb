def duplicate(nums)
  slow = nums[0]
  fast = nums[0]

  while true
    slow = nums[slow]
    fast = nums[nums[fast]]
    if slow == fast
      break
    end
  end
  
  slow = nums[0]
  while slow != fast
    slow = nums[slow]
    fast = nums[fast]
  end
  return slow
end

nums = [3, 1, 3, 4, 2]
print duplicate(nums)