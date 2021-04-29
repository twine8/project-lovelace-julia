function compound_interest(amount, rate, years)
    return amount * (1 + rate) ^ years
end

compound_interest(1000, 0.07, 25)