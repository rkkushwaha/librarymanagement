# Preview all emails at http://localhost:3000/rails/mailers/reject_mailer
class RejectMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/reject_mailer/reject_request
  def reject_request
    RejectMailer.reject_request
  end

end
