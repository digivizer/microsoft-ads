module BingSoapHelper
  def self.poll_report_error
    '<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/">
      <s:Header>
        <h:TrackingId xmlns:h="https://bingads.microsoft.com/Reporting/v12">
          1a3e2bcc-6b29-4253-90b6-5ddadf993947
        </h:TrackingId>
      </s:Header>
      <s:Body>
        <PollGenerateReportResponse xmlns="https://bingads.microsoft.com/Reporting/v12">
          <ReportRequestStatus xmlns:i="http://www.w3.org/2001/XMLSchema-instance">
            <Status>Error</Status>
          </ReportRequestStatus>
        </PollGenerateReportResponse>
      </s:Body>
    </s:Envelope>'
  end

  def self.poll_report_ready
    '<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/">
      <s:Header>
        <h:TrackingId xmlns:h="https://bingads.microsoft.com/Reporting/v12">
          1a3e2bcc-6b29-4253-90b6-5ddadf993947
        </h:TrackingId>
      </s:Header>
      <s:Body>
        <PollGenerateReportResponse xmlns="https://bingads.microsoft.com/Reporting/v12">
          <ReportRequestStatus xmlns:i="http://www.w3.org/2001/XMLSchema-instance">
            <ReportDownloadUrl>https://api.bingads.microsoft.com/ReportDownload/Download.aspx?q=FBqXV8</ReportDownloadUrl>
            <Status>Success</Status>
          </ReportRequestStatus>
        </PollGenerateReportResponse>
      </s:Body>
    </s:Envelope>'
  end

  def self.poll_report_without_url
    '<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/">
      <s:Header>
        <h:TrackingId xmlns:h="https://bingads.microsoft.com/Reporting/v12">
          1a3e2bcc-6b29-4253-90b6-5ddadf993947
        </h:TrackingId>
      </s:Header>
      <s:Body>
        <PollGenerateReportResponse xmlns="https://bingads.microsoft.com/Reporting/v12">
          <ReportRequestStatus xmlns:i="http://www.w3.org/2001/XMLSchema-instance">
            <Status>Success</Status>
          </ReportRequestStatus>
        </PollGenerateReportResponse>
      </s:Body>
    </s:Envelope>'
  end

  def self.poll_report_not_ready
    '<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/">
      <s:Header>
        <h:TrackingId xmlns:h="https://bingads.microsoft.com/Reporting/v12">
          1a3e2bcc-6b29-4253-90b6-5ddadf993947
        </h:TrackingId>
      </s:Header>
      <s:Body>
        <PollGenerateReportResponse xmlns="https://bingads.microsoft.com/Reporting/v12">
          <ReportRequestStatus xmlns:i="http://www.w3.org/2001/XMLSchema-instance">
            <Status>Waiting</Status>
          </ReportRequestStatus>
        </PollGenerateReportResponse>
      </s:Body>
    </s:Envelope>'
  end

  def self.bulk_service_report_submit
    '<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/">
      <s:Header>
        <h:TrackingId xmlns:h="https://bingads.microsoft.com/CampaignManagement/v12">
          9e62cca1-78e7-429a-bb0a-58bac22d2c90
        </h:TrackingId>
      </s:Header>
      <s:Body>
        <GetBulkDownloadStatusResponse xmlns="https://bingads.microsoft.com/CampaignManagement/v12">
          <DownloadRequestId>68818318726</DownloadRequestId>
        </GetBulkDownloadStatusResponse>
      </s:Body>
    </s:Envelope>'
  end

  def self.poll_bulk_service_error
    '<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/">
      <s:Header>
        <h:TrackingId xmlns:h="https://bingads.microsoft.com/CampaignManagement/v12">
          9e62cca1-78e7-429a-bb0a-58bac22d2c90
        </h:TrackingId>
      </s:Header>
      <s:Body>
        <GetBulkDownloadStatusResponse xmlns="https://bingads.microsoft.com/CampaignManagement/v12">
          <RequestStatus>Failed</RequestStatus>
          <Errors>
            <Error>Some Error</Error>
          </Errors>
        </GetBulkDownloadStatusResponse>
      </s:Body>
    </s:Envelope>'
  end

  def self.poll_bulk_service_not_complete
    '<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/">
      <s:Header>
        <h:TrackingId xmlns:h="https://bingads.microsoft.com/CampaignManagement/v12">
          9e62cca1-78e7-429a-bb0a-58bac22d2c90
        </h:TrackingId>
      </s:Header>
      <s:Body>
        <GetBulkDownloadStatusResponse xmlns="https://bingads.microsoft.com/CampaignManagement/v12">
          <PercentComplete>10</PercentComplete>
          <RequestStatus>InProgress</RequestStatus>
        </GetBulkDownloadStatusResponse>
      </s:Body>
    </s:Envelope>'
  end

  def self.poll_bulk_service_completed
    '<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/">
      <s:Header>
        <h:TrackingId xmlns:h="https://bingads.microsoft.com/CampaignManagement/v12">
          9e62cca1-78e7-429a-bb0a-58bac22d2c90
        </h:TrackingId>
      </s:Header>
      <s:Body>
        <GetBulkDownloadStatusResponse xmlns="https://bingads.microsoft.com/CampaignManagement/v12">
          <PercentComplete>100</PercentComplete>
          <RequestStatus>Completed</RequestStatus>
          <ResultFileUrl>https://bingadsappsstorageprod.blob.core.windows.net/bulkdownloadresultfiles/bulkfile.tsv</ResultFileUrl>
        </GetBulkDownloadStatusResponse>
      </s:Body>
    </s:Envelope>'
  end

  def self.get_user_success
    '<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/">
      <s:Header>
        <h:TrackingId xmlns:h="https://bingads.microsoft.com/Customer/v13">1f2f57c9-14d3-490d-9e04-0cea0947b047</h:TrackingId>
      </s:Header>
      <s:Body>
        <GetUserResponse xmlns="https://bingads.microsoft.com/Customer/v13">
            <User xmlns:a="https://bingads.microsoft.com/Customer/v13/Entities" xmlns:i="http://www.w3.org/2001/XMLSchema-instance">
              <a:ContactInfo>
                  <a:Address>
                    <a:City i:nil="true"/>
                    <a:CountryCode>US</a:CountryCode>
                    <a:Id i:nil="true"/>
                    <a:Line1 i:nil="true"/>
                    <a:Line2 i:nil="true"/>
                    <a:Line3 i:nil="true"/>
                    <a:Line4 i:nil="true"/>
                    <a:PostalCode i:nil="true"/>
                    <a:StateOrProvince i:nil="true"/>
                    <a:TimeStamp i:nil="true"/>
                    <a:BusinessName i:nil="true"/>
                  </a:Address>
                  <a:ContactByPhone>false</a:ContactByPhone>
                  <a:ContactByPostalMail>false</a:ContactByPostalMail>
                  <a:Email>John.Doe@gmail.com</a:Email>
                  <a:EmailFormat i:nil="true"/>
                  <a:Fax i:nil="true"/>
                  <a:HomePhone i:nil="true"/>
                  <a:Id>123456</a:Id>
                  <a:Mobile i:nil="true"/>
                  <a:Phone1>+123456</a:Phone1>
                  <a:Phone2 i:nil="true"/>
              </a:ContactInfo>
              <a:CustomerId>789456</a:CustomerId>
              <a:Id>123456</a:Id>
              <a:JobTitle i:nil="true"/>
              <a:LastModifiedByUserId>0</a:LastModifiedByUserId>
              <a:LastModifiedTime>2022-05-31T06:00:52.097</a:LastModifiedTime>
              <a:Lcid>EnglishAustralia</a:Lcid>
              <a:Name>
                  <a:FirstName>John</a:FirstName>
                  <a:LastName>Doe</a:LastName>
                  <a:MiddleInitial i:nil="true"/>
              </a:Name>
              <a:Password i:nil="true"/>
              <a:SecretAnswer i:nil="true"/>
              <a:SecretQuestion>None</a:SecretQuestion>
              <a:UserLifeCycleStatus>Active</a:UserLifeCycleStatus>
              <a:TimeStamp>AAAAAKUiw9s=</a:TimeStamp>
              <a:UserName>john.doe@gmail.com</a:UserName>
              <a:ForwardCompatibilityMap i:nil="true" xmlns:b="http://schemas.datacontract.org/2004/07/System.Collections.Generic"/>
            </User>
            <CustomerRoles xmlns:a="https://bingads.microsoft.com/Customer/v13/Entities" xmlns:i="http://www.w3.org/2001/XMLSchema-instance">
              <a:CustomerRole>
                  <a:RoleId>203</a:RoleId>
                  <a:CustomerId>147258</a:CustomerId>
                  <a:AccountIds i:nil="true" xmlns:b="http://schemas.microsoft.com/2003/10/Serialization/Arrays"/>
                  <a:LinkedAccountIds i:nil="true" xmlns:b="http://schemas.microsoft.com/2003/10/Serialization/Arrays"/>
                  <a:CustomerLinkPermission i:nil="true"/>
              </a:CustomerRole>
              <a:CustomerRole>
                  <a:RoleId>100</a:RoleId>
                  <a:CustomerId>123456</a:CustomerId>
                  <a:AccountIds i:nil="true" xmlns:b="http://schemas.microsoft.com/2003/10/Serialization/Arrays"/>
                  <a:LinkedAccountIds i:nil="true" xmlns:b="http://schemas.microsoft.com/2003/10/Serialization/Arrays"/>
                  <a:CustomerLinkPermission i:nil="true"/>
              </a:CustomerRole>
            </CustomerRoles>
        </GetUserResponse>
      </s:Body>
    </s:Envelope>'
  end

  def self.get_user_error
    '<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/">
      <s:Header>
        <h:TrackingId xmlns:h="https://bingads.microsoft.com/CampaignManagement/v12">
          9e62cca1-78e7-429a-bb0a-58bac22d2c90
        </h:TrackingId>
      </s:Header>
      <s:Body>
        <GetUserResponse xmlns="https://bingads.microsoft.com/CampaignManagement/v12">
          <RequestStatus>Failed</RequestStatus>
          <Errors>
            <Error>Some Error</Error>
          </Errors>
        </GetUserResponse>
      </s:Body>
    </s:Envelope>'
  end
end
