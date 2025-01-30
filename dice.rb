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
      Test
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
