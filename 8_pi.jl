
function almost_pi(N)
    result = 0
    for i = 1:N
        result += (1/(i*2 - 1)) * ((-1)^(i+1))
    end
    return result * 4
end

almost_pi(10000)
