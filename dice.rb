require "sinatra"
require "sinatra/reloader"

get("/") do
  "Hello World!"
end

get("/test") do
  "This is a test message."
end

get("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die

  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."

  "<h1>2d6</h>
  <p>#{outcome}</p>"
end
