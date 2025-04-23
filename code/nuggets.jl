function is_nugget_number(candidate, SIX, NINE, TWENTY)
    for i in 0:floor(candidate/SIX)
        for j in 0:floor((candidate - i*SIX)/NINE)
            for k in 0:floor((candidate - i*SIX - j*NINE)/TWENTY)
                if i*SIX + j*NINE + k*TWENTY == candidate
                    return true
                end
            end
        end
    end

    return false
end

function nuggets()
    SIX = 6
    NINE = 9 
    TWENTY = 20
    counter = 0
    candidate = 0
    largest = 0
    
    while counter < SIX
        if is_nugget_number(candidate, SIX, NINE, TWENTY)
            counter += 1 
        else 
            counter =0 
            largest = candidate
        end
        candidate += 1
    end
    
    println("The largest number of nuggets that you cannot purchase is $largest")
    
end