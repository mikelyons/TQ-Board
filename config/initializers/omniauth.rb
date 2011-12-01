Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'Lwckrszjhp7Y4KcPb5qkfQ', 'a5qUGiGgKAqCS3JIZmFmMzpOjBzKn071n4QVBMzlOU'
  provider :facebook, '169099689790425', 'de5c6d52b636a017344111d8528e170b'
end
