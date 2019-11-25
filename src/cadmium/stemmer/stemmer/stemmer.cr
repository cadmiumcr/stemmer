module Cadmium
  abstract class Stemmer
    include Tokenizer::StopWords

    def initialize
      add_stopwords_list(:en)
      @@stop_words.concat @@loaded_stop_words[:en] if @@stop_words.empty?
    end

    def self.stem(token)
      token
    end

    def self.tokenize_and_stem(text, keep_stops = false)
      stemmed_tokens = [] of String
      lowercase_text = text.downcase
      tokens = Cadmium::Tokenizer::Aggressive.new.tokenize(lowercase_text)

      if keep_stops
        tokens.each { |token| stemmed_tokens.push(stem(token)) }
      else
        tokens.each { |token| stemmed_tokens.push(stem(token)) unless @@stop_words.includes?(token) }
      end

      stemmed_tokens
    end
  end
end
