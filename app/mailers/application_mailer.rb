class ApplicationMailer < ActionMailer::Base
  default from: GoodForm::Application.config.mailfrom_address
  layout 'mailer'
end
