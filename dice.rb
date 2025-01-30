require "sinatra"

get("/") do
  "Hello World!"
end

get("/zebra") do
  "We must add a route for each path that we support"
end

get("/test") do
  "Hopefully this shows up without having to restart the server"
end
