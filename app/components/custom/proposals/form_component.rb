class Proposals::FormComponent < ApplicationComponent; end
require_dependency Rails.root.join("app", "components", "proposals", "form_component").to_s

class Proposals::FormComponent < ApplicationComponent
  include TranslatableFormHelper
  include GlobalizeHelper
  attr_reader :proposal, :url
  delegate :current_user, :suggest_data, :geozone_select_options, to: :helpers

  def initialize(proposal, url:)
    @proposal = proposal
    @url = url
  end

  private

    def categories
      Tag.category.order(:name)
    end
end
