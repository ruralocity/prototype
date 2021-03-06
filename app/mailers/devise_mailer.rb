class DeviseMailer < Devise::Mailer
  def reset_password_instructions(user, token, options={})
    @user = user
    @token = token
    options[:subject] = "Reset password request from Exercism"
    super
  end

  def confirmation_instructions(user, token, options={})
    @user = user
    @token = token
    options[:subject] = "Confirm your Exercism account"
    super
  end
end
