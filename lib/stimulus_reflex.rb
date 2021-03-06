# frozen_string_literal: true

require "uri"
require "rack"
require "rails/engine"
require "active_support/all"
require "action_dispatch"
require "action_cable"
require "nokogiri"
require "cable_ready"
require "stimulus_reflex/version"
require "stimulus_reflex/configuration"
require "stimulus_reflex/reflex"
require "stimulus_reflex/element"
require "stimulus_reflex/sanity_checker"
require "stimulus_reflex/broadcasters/broadcaster"
require "stimulus_reflex/broadcasters/nothing_broadcaster"
require "stimulus_reflex/broadcasters/page_broadcaster"
require "stimulus_reflex/broadcasters/selector_broadcaster"

module StimulusReflex
  class Engine < Rails::Engine
    initializer "stimulus_reflex.sanity_check" do
      SanityChecker.check!
    end
  end
end
