class Polls::Questions::ReadMoreComponent < ApplicationComponent; end

require_dependency Rails.root.join("app", "components", "polls", "read_more_component").to_s

class Polls::Questions::ReadMoreComponent
  with_collection_parameter :question
  attr_reader :question
  delegate :wysiwyg, to: :helpers

  def initialize(question:)
    @question = question
  end

  def render?
    question.answers_with_read_more?
  end
end
