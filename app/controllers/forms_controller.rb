class FormsController < ApplicationController

  def create
    forward_params = params.permit!
    logger.info forward_params
    FormMailer.forward_email(forward_params.to_hash.except("action", "controller", "utf8", "sender")).deliver

    if params["sender"] != "ajax"
      redirect_to request.referer || GoodForm::Application.config.default_return_url
    else
      render json: {status: "ok"}, status: :ok
    end
  end
end
