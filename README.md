# cin

类似go语言的gin框架

## Installation

TODO: Write installation instructions here

## Usage

```
require "cin"

r = Cin.default

def j(ctx)
  {hello: "zhuzhenfeng"}
end

r.use(JsonHandler)
r.get("/json", ->j(Cin::Context))
r.run()
```

## Development

TODO: Write development instructions here

## Contributing

1. Fork it (<https://github.com/your-github-user/cin/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [zhuzhenfeng.code](https://github.com/your-github-user) - creator and maintainer
