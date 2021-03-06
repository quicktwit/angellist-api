require 'spec_helper'

describe AngellistApi::Client::Search do
  let(:client) { AngellistApi::Client.new }

  describe '#search' do
    it 'gets 1/search' do
      query = 'pirates'
      options = { :some => "options" }
      client.should_receive(:get).with('1/search', options).and_return('success')
      client.search(query, options).should == 'success'
    end
  end
end

