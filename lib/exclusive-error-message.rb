# encoding: UTF-8
# frozen_string_literal: true

module ExclusiveErrorMessage
  module Extension
    def full_message(attribute, message)
      if message.respond_to?(:start_with?) && message.start_with?('_') # Support non-string error messages like hashes.
        message[1..-1]
      else
        super
      end
    end
  end
end

require 'active_model/errors'

ActiveModel::Errors.prepend ExclusiveErrorMessage::Extension
