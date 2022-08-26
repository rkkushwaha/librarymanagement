class BookMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.book_mailer.book_issued.subject
  #
  default from: 'support@mail.com'

  def book_issued

    mail(to: "kr93554.rk@gmail.com", subject: 'Book Issued Successfully')
  end
end
