require 'gibbon'

class MailchimpController < ApplicationController
  def add_to_list
    begin
      gibbon = Gibbon::Request.new(api_key: ENV['MAILCHIMP_API_KEY'])
      gibbon.lists(ENV['MAILCHIMP_LIST_ID']).members.create(
        body: {
          email_address: params[:email],
          status: 'subscribed',
          merge_fields: {
            TYPE: params[:type]
          }
        }
      )
    rescue Gibbon::MailChimpError => e
      logger.error e.title
      logger.error e.detail
      logger.error e.body
    end
  end
end
