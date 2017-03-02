# Where the I18n library should search for translation files
I18n.load_path += Dir[Rails.root.join('lib', 'locale', '*.{rb,yml}')]
 
I18n.config.available_locales = [:pl, :en]

# Set default locale to something other than :en
I18n.default_locale = :pl