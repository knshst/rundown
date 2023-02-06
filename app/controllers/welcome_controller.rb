class WelcomeController < ApplicationController
  def index
    # モダンブラウザの場合エラー画面を表示する。
    browser = Browser.new( request.env['HTTP_USER_AGENT'] )
    if browser.device.mobile?
      redirect_to action: :error
    end
  end

  def error
    render layout: false
  end
end
