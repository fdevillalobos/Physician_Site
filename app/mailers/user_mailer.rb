class UserMailer < Devise::Mailer
  helper :application # gives access to all helpers defined within `application_helper`.
  include Devise::Controllers::UrlHelpers # Optional. eg. `confirmation_url`
  default template_path: 'devise/mailer' # to make sure that you mailer uses the devise views

  # default from: "physician@friends.com"

  # def confirmation_email(user)
  #   @user = user
  #   @url  = 'www.facebook.com'
  #   mail(to: @user.email, subject: 'Please Confirm Your Email Address')
  # end

  def confirmation_instructions(record, token, opts={})

    @name = record.name
    headers["Custom-header"] = "Bar"
    opts[:from]     = 'frommy_custom_from@domain.com'
    opts[:reply_to] = 'replymy_custom_from@domain.com'
    opts[:subject]  = 'Please Confirm Your Email Address'
    @url  = 'www.physicianfriends.com'
    super
  end

end
