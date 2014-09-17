# We are asking for a function to take a positive integer value, and return a list of all positive integer pairs whose values - when squared- sum to the given integer.

def all_squared_pairs(num)
    results = [] 
    i = 0
    j = Math.sqrt(num).floor

    while j >= i
        sum = i**2 + j**2
        if sum == num
            results<<[i, j]
            i += 1
            j -= 1
        elsif sum < num
            i += 1
        else
            j -= 1
        end
    end
    return results
end

