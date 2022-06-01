require 'spec_helper'
require 'savon'
require 'nori'
require 'datebox'
require 'httparty'
require 'byebug'

describe BingAdsReporting::AccountService do
  let(:dev_token)   { '0000000123DF' }
  let(:app_token)   { '0000000SD313' }
  let(:auth_token)  { 'MS12399031jj' }
  let(:account_id)  { '123458' }
  let(:customer_id) { '6667434' }
  let(:nori)        { Nori.new(strip_namespaces: true, convert_tags_to: ->(tag) { tag.snakecase.to_sym }) }
  let(:service)     { described_class.new(account_settings) }
  let(:encoded_response) { nori.parse(xml_response)[:envelope][:body] }
  let(:response_double)  { instance_double('Savon::Response', header: {}, body: encoded_response) }
  let(:account_settings) do
    {
      developerToken: dev_token,
      applicationToken: app_token,
      authenticationToken: auth_token,
      accountId: account_id,
      customerId: customer_id
    }
  end

  before do
    allow_any_instance_of(Savon::Client).to receive(:call) { response_double }
  end

  describe '#get_user' do
    let(:get_user_response) { service.get_user }

    context 'when request succeeds' do
      let(:xml_response) { BingSoapHelper.get_user_success }
      
      it 'returns user info' do
        expect(get_user_response).to include(:user, :customer_roles)
      end
    end

    context 'when request fails' do
      let(:xml_response) { BingSoapHelper.get_user_error }
      
      it 'returns nil' do
        expect(get_user_response).to eql(nil)
      end
    end
  end
end
