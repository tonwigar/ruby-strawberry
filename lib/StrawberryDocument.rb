require_relative './Document'

class StrawberryDocument < Document

    attr_accessor :attributes

    def initialize(title:, attributes:)
        @title = title
        @attributes = attributes
    end

    def render
        result = ""
        result += @title
        result += "\n--------------------\n"
        @attributes.each do |key, value|
            result += key.to_s + " " + value.to_s + "\n"
        end
        result += generateDate
        puts result
        return result
    end

end

test = StrawberryDocument.new(title: 'elo', attributes: {size: '3 cm', weight: '1kg'})

test.render