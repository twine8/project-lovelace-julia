function temperature_statistics(T)
    mean = (sum(T) / length(T))
    std  = 0
    std_sum = 0

    for temp in T
        std_sum += (temp - mean) ^ 2
    end

    std = sqrt(std_sum / length(T))
    return mean, std
end

temperature_statistics([4.4, 4.2, 7.0, 12.9, 18.5, 23.5, 26.4, 26.3, 22.5, 16.6, 11.2, 7.3])

