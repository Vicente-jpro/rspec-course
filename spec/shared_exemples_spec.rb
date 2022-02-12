RSpec.shared_examples 'A Ruby object with three elements' do 
    it 'return the number of items' do 
        expect(subject.length).to eq(3)
    end
end

RSpec.describe Array do 
    subject {[1, 2, 3]}
    include_examples 'A Ruby object with three elements'
end

RSpec.describe String do 
    subject { 'abc' }
    include_examples 'A Ruby object with three elements'
end

RSpec.describe Hash do 
    subject {{a: 1, b: 2, c: 3}}
    include_examples 'A Ruby object with three elements'
end

class LinkShare
    def length
      3
    end 
end

RSpec.describe LinkShare do 
    subject { described_class.new }
    #subject { LinkShare.new }
    include_examples 'A Ruby object with three elements'
end