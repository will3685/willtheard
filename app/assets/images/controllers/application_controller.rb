class ApplicationController < ActionController::Base
  before_action :set_locale
  
  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end

  def set_locale
    I18n.locale = params.fetch(:locale, I18n.default_locale).to_sym
  end

  def default_url_options
    { locale: I18n.locale == I18n.default_locale ? nil : I18n.locale }
  end
end
