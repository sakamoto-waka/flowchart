input_lines = readlines

room = input_lines[0].to_i
air_conditioner = input_lines[1].to_i
wind = input_lines[2].to_i

tempreture_deff = (room - air_conditioner).abs

require_time = 0

if tempreture_deff < 5
  require_time = 15
elsif tempreture_deff >= 5 && tempreture_deff < 10
  require_time = 30
elsif tempreture_deff >= 10
  require_time = 60
end

if wind == 1
  require_time = require_time
elsif wind == 2
  require_time = require_time - 5
elsif wind == 3
  require_time = require_time - 10
else
  p '風量は1~3にしてください'
  exit
end

#case = wind
  #when 1 require_time
  #when 2 require_time = require_time - 5
  #when 3 require_time = require_time - 10
  #else 
  #p '風量は1~3にしてください'
  #exit
#end

p require_time