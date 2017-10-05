class FormMailer < ApplicationMailer

  def forward_email(params)
    @params = params
    mail to: GoodForm::Application.config.mailto_address,
         reply_to: @params.fetch('email'),
         subject: GoodForm::Application.config.mailto_subject
  end
end
