require_relative 'service_core'

module BingAdsReporting
  class AccountService < ServiceCore
    WDSL = 'https://clientcenter.api.bingads.microsoft.com/Api/CustomerManagement/v13/CustomerManagementService.svc?singleWsdl'.freeze
    FAILED_STATUS = 'Error'.freeze
    SUCCESS_STATUS = 'Success'.freeze

    def get_user
      response = client.call(:get_user, message: {})
      response.body[:get_user_response]
    rescue Savon::SOAPFault => e
      handle_error(e)
      logger.error e.message
      raise e
    end

    def get_customers_info
      response = client.call(:get_customers_info, message: generate_get_customers_info_message)
      response.body[:get_customers_info_response][:customers_info][:customer_info]
    rescue Savon::SOAPFault => e
      handle_error(e)
      logger.error e.message
      raise e
    end

    def get_accounts_info(customer_id:)
      response = client.call(:get_accounts_info, message: generate_get_accounts_info_message(customer_id))
      response.body[:get_accounts_info_response][:accounts_info][:account_info]
    rescue Savon::SOAPFault => e
      handle_error(e)
      logger.error e.message
      raise e
    end

    def find_accounts_or_customers_info
      response = client.call(:find_accounts_or_customers_info, message: generate_find_accounts_or_customers_info_message)
      response.body[:find_accounts_or_customers_info_response][:account_info_with_customer_data][:account_info_with_customer_data]
    rescue Savon::SOAPFault => e
      handle_error(e)
      logger.error e.message
      raise e
    end

    private

    def wdsl
      WDSL
    end

    def failed_status
      FAILED_STATUS
    end

    def success_status
      SUCCESS_STATUS
    end

    def generate_get_customers_info_message
      {
        ns('CustomerNameFilter') => '',
        ns('TopN') => 100
      }
    end

    def generate_get_accounts_info_message(customer_id)
      {
        ns('CustomerId') => customer_id
      }
    end

    def generate_find_accounts_or_customers_info_message
      {
        ns('TopN') => 5000
      }
    end
  end
end
