require_relative 'service_core'

module BingAdsReporting
  class AccountService < ServiceCore
    WDSL = 'https://clientcenter.api.bingads.microsoft.com/Api/CustomerManagement/v13/CustomerManagementService.svc?singleWsdl'.freeze
    FAILED_STATUS = 'Error'.freeze
    SUCCESS_STATUS = 'Success'.freeze

    #
    # Get details about the currently authenticated user.
    # Docs: https://docs.microsoft.com/en-us/advertising/customer-management-service/getuser?view=bingads-13
    #
    # @return [Hash] User info and customer roles
    #
    def get_user
      response = client.call(:get_user, message: {})
      response.body[:get_user_response]
    rescue Savon::SOAPFault => e
      handle_error(e)
      logger.error e.message
      raise e
    end

    #
    # Gets the identifiers, names, and numbers of accounts that are accessible from the specified customer.
    # Docs: https://docs.microsoft.com/en-us/advertising/customer-management-service/getaccountsinfo?view=bingads-13
    #
    # @return [Array<Hash>] An array of information about advertiser accounts
    #
    def get_accounts_info
      response = client.call(:get_accounts_info, message: {})
      response.body[:get_accounts_info_response][:accounts_info]
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
  end
end
