function moose_body_mass(latitude)
    gradient = 2.757
    intercept = 16.793
    return latitude * gradient + intercept
end