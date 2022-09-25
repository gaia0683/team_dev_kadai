class TeamMailer < ApplicationMailer
  default from: 'from@example.com'

  def change_owner_mail(email,before_owner_email)
    @email = email
    @before_owner_email = before_owner_email
    mail to: @email, subject: 'リーダー権限移行のお知らせ'
  end
end
