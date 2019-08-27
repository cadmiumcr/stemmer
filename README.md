# stemmer

Currently Cadmium only comes with a [Porter](http://tartarus.org/martin/PorterStemmer/index.html) Stemmer, but [Lancaster](http://www.comp.lancs.ac.uk/computing/research/stemming/) will be added soon. Stemmer methods `stem` and `tokenize_and_stem` have also been added to the String class to simplify use.

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     cadmium_stemmer:
       github: cadmiumcr/stemmer
   ```

2. Run `shards install`

## Usage

```crystal
require "cadmium_stemmer"

"words".stem
# => word

"i am waking up to the sounds of chainsaws".tokenize_and_stem
# => ["wake", "sound", "chainsaw"]
```

## Contributing

1. Fork it (<https://github.com/cadmiumcr/stemmer/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Chris Watson](https://github.com/watzon) - creator and maintainer
