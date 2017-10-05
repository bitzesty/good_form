class FormMailer < ApplicationMailer

  def forward_email(params)
    @params = params
    mail to: GoodForm::Application.config.mailto_address,
         subject: GoodForm::Application.config.mailto_subject
  end
end
