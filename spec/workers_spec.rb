require '../lib/WorkersDocument'

describe WorkersDocument do
    describe '#render' do
        it 'returns true if passed arguments are inside a render method' do
            workers = WorkersDocument.new(title: "elo", workers: [{name: 'Adam', surname: 'Kowalski'}, {name: 'Alex', surname: 'Dębowski'}])
            expect(workers.render).to include("elo", "Adam", "Kowalski", "Alex", "Dębowski")
        end
    end
end