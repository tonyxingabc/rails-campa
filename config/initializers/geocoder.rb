Geocoder.configure(
  lookup:    :google,
  api_key:   ENV['GOOGLE_API_SERVER_KEY'],
  use_https: true,
  # always_raise: [],

  # Calculation options
  units: :km,
)
