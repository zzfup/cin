require "./spec_helper"

class JsonHandler < Kemal::Handler
  def call(context)
    puts "doing some custom stuff here"
    context.response.content_type = "application/json"
    call_next context
  end
end

r = Cin.default

def j(ctx)
  {hello: "zhuzhenfeng"}
end

# alias Context = HTTP::Server::Context

r.use(JsonHandler)
r.get("/json", ->j(Cin::Context))
r.run()
