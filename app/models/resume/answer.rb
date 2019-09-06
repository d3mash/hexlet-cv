# frozen_string_literal: true

class Resume::Answer < ApplicationRecord
  # FIXME: add unique index
  validates :resume, uniqueness: { scope: :user }

  belongs_to :resume
  belongs_to :user
  has_many :likes, foreign_key: 'resume_answer_id', dependent: :delete_all, inverse_of: :answer

  validates :content, presence: true
end
