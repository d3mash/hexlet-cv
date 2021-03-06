# frozen_string_literal: true

module Resume::AnswerRepository
  extend ActiveSupport::Concern

  included do
    scope :web, -> { order(id: :desc) }
  end
end
