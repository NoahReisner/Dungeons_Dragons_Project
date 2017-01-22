@dice_roll = 0
def dice sides
  temp_list = []
  puts sides.to_s
  temp_value = 1
  begin
    temp_list.push(temp_value)
    temp_value = temp_value + 1
  end until temp_list.length == 10
  @dice_roll = temp_list[rand(temp_list.length)].to_s
 return
end

dice(10)
puts @dice_roll.to_s
if @dice_roll >= (11)
  puts "true"
else
  puts "false"
end
