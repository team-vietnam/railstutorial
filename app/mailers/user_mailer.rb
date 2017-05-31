class UserMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.account_activation.subject
  #
  def account_activation(user)
    @username = user.name

    mail(to: user.email, subject: "Account有効化") do |format|
      # default content_transfer_encoding seems to be base64
      format.text(content_transfer_encoding: "7bit")
      format.html(content_transfer_encoding: "7bit")
    end
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #
  def password_reset
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
