input_lines = readlines

room = input_lines[0].to_i
air_conditioner = input_lines[1].to_i

tempreture_deff = (room - air_conditioner).abs

require_time = 0

if tempreture_deff < 5
  require_time = 15
elsif tempreture_deff >= 5 && tempreture_deff < 10
  require_time = 30
elsif tempreture_deff >= 10
  require_time = 60
end

p require_time