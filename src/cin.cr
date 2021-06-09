require "kemal"

# TODO: Write documentation for `Cin`
module Cin
  VERSION = "0.1.0"

  alias Context = HTTP::Server::Context

  # TODO: Put your code here
  def self.default
    Engine.new
  end

  class Engine
    def run
      Kemal.run
    end

    def get(path, func)
      get path do |ctx|
        func.call(ctx).to_json
      end
    end

    def post(path, func)
      post path do |ctx|
        func.call(ctx).to_json
      end
    end

    def put(path, func)
      put path do |ctx|
        func.call(ctx).to_json
      end
    end

    def patch(path, func)
      patch path do |ctx|
        func.call(ctx).to_json
      end
    end

    def delete(path, func)
      delete path do
        func.call(ctx).to_json
      end
    end

    def use(handler)
      add_handler handler.new
    end
  end
end
