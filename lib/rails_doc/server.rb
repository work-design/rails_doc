module RailsDoc::Server

  def url
    Hash(Rails.application.routes.default_url_options).dig(:host)
  end

  def env
    Rails.env
  end

end
