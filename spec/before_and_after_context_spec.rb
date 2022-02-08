RSpec.describe 'before and after hooks' do
    
    before(:context) do 
        puts "Before context"
    end
    
    after(:context) do 
        puts "After context"
    end

    before(:example) do 
        puts "Before exemple"
    end

    after(:example) do 
        puts "After exemple"
    end

    it 'just a random exemple' do
        puts 'just a random exemple 1'
        expect(4 * 4).to eq(16)
    end

    it 'just another random exemple' do 
       puts 'just another random exemple 2'
        expect(4 - 2).to eq(2)
    end
   
end