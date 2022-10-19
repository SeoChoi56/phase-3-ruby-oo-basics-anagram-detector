# Your code goes here!
require "pry"

class Anagram 
    attr_reader :word

    def initialize (word)
        @word = word
    end

    def match (array)
        wordCheckArray = word.split.map(&:chars).flatten.sort
        returnArray = []

        array.map do |w|
            if w.split.map(&:chars).flatten.sort == wordCheckArray 
                returnArray.push(w)
            end
        end
        return returnArray
    end
end