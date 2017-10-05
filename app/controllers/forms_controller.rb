class FormsController < ApplicationController

  def create
    forward_params = params.permit!
    FormMailer.forward_email(forward_params.to_hash.except("action", "controller")).deliver
    redirect_to request.referer || GoodForm::Application.config.default_return_url
  end
end
