class RejectMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.reject_mailer.reject_request.subject
  #
  default from: 'support@mail.com'

  def reject_request

    mail(to: "kr93554.rk@gmail.com", subject: 'Book Denied')
  end
end
