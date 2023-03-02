class Anagram

    attr_reader :word

    def initialize(word)
      @word = word
    end

    def match(words)
      words.filter { |wrd| wrd.split("").sort == word.split("").sort }
    end
  end

  listen = Anagram.new("listen")
  puts listen.word
  puts listen.match(%w{enlists google inlets banana})