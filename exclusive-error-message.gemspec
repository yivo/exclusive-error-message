# encoding: UTF-8
# frozen_string_literal: true

require File.expand_path('../lib/exclusive-error-message/version', __FILE__)

Gem::Specification.new do |s|
  s.name            = 'exclusive-error-message'
  s.version         = ExclusiveErrorMessage::VERSION
  s.author          = 'Yaroslav Konoplov'
  s.email           = 'eahome00@gmail.com'
  s.summary         = '100% exclusive message for any ActiveModel validation error.'
  s.description     = '100% exclusive message for any ActiveModel validation error.'
  s.homepage        = 'https://github.com/yivo/exclusive-error-message'
  s.license         = 'MIT'

  s.files           = `git ls-files -z`.split("\x0")
  s.test_files      = `git ls-files -z -- {test,spec,features}/*`.split("\x0")
  s.require_paths   = ['lib']

  s.add_dependency 'activemodel', '>= 3.0', '< 6.0'
end
