require_relative '../lib/Document'

describe Document do
    describe '#generateDate' do
        it 'returns the string with current date' do
            expect(subject.generateDate).to eql("Wygenerowano " + Time.now.to_s)
        end
    end
end