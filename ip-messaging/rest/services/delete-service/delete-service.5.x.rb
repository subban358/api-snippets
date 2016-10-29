require 'http'
require 'twilio-ruby'

# Initialize the client
account_sid = 'ACCOUNT_SID'
auth_token = 'AUTH_TOKEN'
ip_messaging_client = Twilio::REST::IpMessagingClient.new(
  account_sid,
  auth_token
)

# Delete the service
service = ip_messaging_client.services.get('SERVICE_SID')
response = service.delete
puts response