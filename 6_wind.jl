const chill_amount = 13.12
const air_temperature_modifier = 0.6215
const wind_speed_modifier = 11.37
const combined_term_modifier = 0.3965
const air_temperature_power = 0.16

function wind_chill(T_a, v)
    #temperatures are in celcius
    return chill_amount + air_temperature_modifier * T_a - wind_speed_modifier * v ^ air_temperature_power + combined_term_modifier * T_a * v ^ air_temperature_power
end

wind_chill(-25, 30)