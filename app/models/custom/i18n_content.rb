load Rails.root.join("app", "models", "i18n_content.rb")

class I18nContent < ApplicationRecord
  class << self

    alias_method :consul_basic_translations, :basic_translations

    def basic_translations
      consul_basic_translations + %w[
       devise.sessions.local_sign_in_title
       devise.sessions.local_sign_in_description
      ]
    end

  end

end

