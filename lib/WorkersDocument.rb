require_relative './Document'

class WorkersDocument < Document

    attr_accessor :workers

    def initialize(title:, workers:)
        @title = title
        @workers = workers
    end

    def render
        result = ""
        result += @title.to_s + "\n"
        result += "-----------------\n"
        @workers.each do |worker|
            result += worker[:name].to_s + " " + worker[:surname].to_s + "\n"
        end
        result += generateDate
        puts result
        return result
    end
end

test = WorkersDocument.new(title: 'elo', workers: [{name: 'Adam', surname: 'Kowalski'}, {name: 'Alex', surname: 'Dębowski'}])
test.render