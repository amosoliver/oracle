require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module Oracle
  class Application < Rails::Application
    config.load_defaults 7.2

    config.autoload_lib(ignore: %w[assets tasks])

    # Configura para carregar todos os arquivos de tradução dentro de config/locales (subpastas incluídas)
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]

    # Define pt-BR como local padrão da aplicação
    config.i18n.default_locale = :'pt-BR'

    # Outras configurações...
  end
end
