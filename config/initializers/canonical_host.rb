if Rails.env.production?
  Rails.application.config.middleware.use Rack::CanonicalHost do
    "hk-pollution.thought-sauce.com"
  end
end