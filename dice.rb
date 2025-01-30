require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Let's roll some dice!
  <ul>
    <li>
      <a href=\"/dice/2/6\">Roll two 6-sided dice</a>
    </li>
    <li>
      <a href=\"/dice/2/10\">Roll two 10-sided dice</a>
    </li>
    <li>
      <a href=\"/dice/1/20\">Roll one 20-sided dice</a>
    </li>
    <li>
      <a href=\"/dice/60/6\">Roll 60 6-sided dice</a>
    </li>
  </ul>
  "
end


get("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die

  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."

  "
  <h1>2d6</h1>
  <h2>#{outcome}</h2>
  <p><a href=\"/\">Return to homepage</a></p>
  "
end

get("/dice/2/10") do
  number_rolls = 2
  dice_roll = Array.new
  outcome = String.new
  counter = 0 # used for the outcome loop
  
  
  while dice_roll.length < number_rolls
    dice_roll.push(rand(1..10))
  end

  # outcome loop
  dice_roll.each do |the_roll|
    counter = counter + 1
    outcome = outcome + "Roll # #{counter}: #{the_roll}<br>"
  end
  outcome = outcome + "Total = #{dice_roll.sum}"

  # "Test message"

  "
  <h1>2d10</h1>
  <h2>#{outcome}</h2>
  <p><a href=\"/\">Return to homepage</p>
  "
end

get("/dice/1/20") do
  number_rolls = 1
  dice_roll = Array.new
  outcome = String.new
  counter = 0 # used for the outcome loop
  
  
  while dice_roll.length < number_rolls
    dice_roll.push(rand(1..20))
  end

  # outcome loop
  dice_roll.each do |the_roll|
    counter = counter + 1
    outcome = outcome + "Roll # #{counter}: #{the_roll}<br>"
  end
  outcome = outcome + "Total = #{dice_roll.sum}"

  # "Test message"

  "
  <h1>1d20</h1>
  <h2>#{outcome}</h2>
  <p><a href=\"/\">Return to homepage</p>
  "
end

get("/dice/60/6") do
  number_rolls = 60
  dice_roll = Array.new
  outcome = String.new
  counter = 0 # used for the outcome loop
  
  
  while dice_roll.length < number_rolls
    dice_roll.push(rand(1..6))
  end

  # outcome loop
  dice_roll.each do |the_roll|
    counter = counter + 1
    outcome = outcome + "Roll # #{counter}: #{the_roll}<br>"
  end
  outcome = outcome + "Total = #{dice_roll.sum}"

  # "Test message"

  "
  <h1>60d6</h1>
  <h2>#{outcome}</h2>
  <p><a href=\"/\">Return to homepage</p>
  "
end
