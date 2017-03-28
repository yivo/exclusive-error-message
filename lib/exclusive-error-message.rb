# encoding: UTF-8
# frozen_string_literal: true

module ExclusiveErrorMessage
  module Extension
    def full_message(attribute, message)
      message.start_with?('_') ? message[1..-1] : super
    end
  end
end

require 'active_model/errors'

ActiveModel::Errors.prepend ExclusiveErrorMessage::Extension
