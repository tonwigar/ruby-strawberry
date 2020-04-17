require '../lib/StrawberryDocument'

describe StrawberryDocument do
    describe '#render' do
        it 'returns true if passed arguments are inside a render method' do
            strawberry = StrawberryDocument.new(title: "elo", attributes: {size: '8 cm', weight: '28kg'})
            expect(strawberry.render).to include("elo", "8 cm","28kg")
        end
    end
end