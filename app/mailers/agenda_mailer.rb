class AgendaMailer < ApplicationMailer

  default from: 'example@example.com'
  def delete_agenda_mail(team_user_email)
    @team_user_email = team_user_email

    mail to: @team_user_email.users.pluck(:email), subject: 'アジェンダ削除のお知らせ'
  end
end
