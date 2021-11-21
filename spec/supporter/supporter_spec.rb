require './app/models/supporter'

describe Supporter do 
  describe 'time converter' do 
    before(:all) do 
      class Test
        include Supporter
      end
      
      @test = Test.new
    end

    it 'should included TimeConverter module' do 
      expect(Supporter.include?(TimeConverter)).to eq true
    end

    it 'should show correct duration' do
      expect(@test.humanize_duration(0)).to eq '0 seconds ago'
      expect(@test.humanize_duration(25)).to eq '25 seconds ago'
      expect(@test.humanize_duration(60)).to eq '1 minutes ago'
      expect(@test.humanize_duration(3600)).to eq '1 hours ago'
      expect(@test.humanize_duration(86400)).to eq '1 days ago'
    end

    it 'should return corrent time stamp' do 
      expect(@test.timestamp(Time.new('2020-01-01'))).to eq 1577808000
    end
  end
end
