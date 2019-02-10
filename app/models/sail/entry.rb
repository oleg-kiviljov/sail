# frozen_string_literal: true

module Sail
  # Entry
  #
  # The Entry class holds the saved value
  # for settings for each profile. It is
  # a model for representing the N x N
  # relationship between profiles and settings
  class Entry < ApplicationRecord
    belongs_to :setting
    belongs_to :profile
    validates_presence_of :value, :setting, :profile
  end
end