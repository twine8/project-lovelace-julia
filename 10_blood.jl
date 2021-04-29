function survive(blood_type, donated_blood)
    blood_map = Dict(
        "O-" => Set(["O-"]),
        "O+" => Set(["O-", "O+"]),
        "A-" => Set(["O-", "A-"]),
        "A+" => Set(["O-", "O+", "A-", "A+"]),
        "B-" => Set(["O-", "B-"]),
        "B+" => Set(["O-", "O+", "B-", "B+"]),
        "AB-" => Set(["O-", "B-", "A-", "AB-"]),        
        "AB+" => Set(["O-", "O+", "A-", "A+", "B-", "B+", "AB-", "A+-"]),
    ) 

    for stored_type in donated_blood
        if stored_type in blood_map[blood_type]
            return true
        end
    end

    # Your code goes here!
    return false
end

survive("O+", ["A-", "B+", "AB+", "O+", "B+", "B-"])
