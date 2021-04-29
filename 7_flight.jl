const R  = 6372.1  # Radius of the Earth [km]

function degrees_to_radians(degrees)
    return degrees * (pi / 180)
end

function haversine_distance(lat1, lon1, lat2, lon2)
    d = 0
    root_term_1 = sin(degrees_to_radians((lat2 - lat1)/2)) ^ 2
    root_term_2 = cos(degrees_to_radians(lat1)) * cos(degrees_to_radians(lat2)) * (sin(degrees_to_radians((lon2-lon1)/2)) ^ 2)
    root_result = sqrt(root_term_1 + root_term_2)
    return 2 * R * asin(root_result)

    return d
end


haversine_distance(46.283, 86.667, -48.877, -123.93)