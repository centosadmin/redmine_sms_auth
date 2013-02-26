Redmine::Plugin.register :redmine_sms_auth do
  name 'Redmine SMS Auth plugin'
  author 'Pavel Nemkin'
  description 'Plugin adds secondary sms authentication'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'https://github.com/kanfet'
end

ActionDispatch::Callbacks.to_prepare do
  require_dependency 'redmine_sms_auth/hooks'
  require_dependency 'account_controller_patch'
  require_dependency 'user_patch'
end