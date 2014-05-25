require 'spec_helper'

describe OmniAuth::Strategies::Soup do
  let(:access_token) { double('AccessToken', :options => {}) }
  let(:parsed_response) { double('ParsedResponse') }
  let(:response) { double('Response', :parsed => parsed_response) }


  subject do
    OmniAuth::Strategies::Soup.new({})
  end

  before(:each) do
    subject.stub(:access_token).and_return(access_token)
  end

  context "config options" do
    it "should have correct url" do
      subject.options.client_options.site eq('https://auphonic.com/api')
    end

    it "should have correct authorize url" do
      subject.options.client_options.authorize_url eq('https://auphonic.com/oauth2/authorize/')
    end

    it "should habe correct token url" do
      subject.options.client_options.token_url eq('https://auphonic.com/oauth2/token')
    end
  end
end