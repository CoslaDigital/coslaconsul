class Budgets::Investments::FormComponent < ApplicationComponent
  include TranslatableFormHelper
  include GlobalizeHelper
  attr_reader :investment, :url
  use_helpers :current_user, :budget_heading_select_options, :suggest_data

  def initialize(investment, url:)
    @investment = investment
    @url = url
    log_investment_attributes
  end

  private

    def budget
      investment.budget
    end

    def categories
      Tag.category.order(:name)
    end
    
    def log_investment_attributes
      Rails.logger.info "Investment Attributes: #{investment.attributes.inspect}"
    end

end
