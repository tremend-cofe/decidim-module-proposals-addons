# frozen_string_literal: true

require "decidim/proposal_addons/admin"
require "decidim/proposal_addons/engine"
require "decidim/proposal_addons/admin_engine"
require "decidim/proposal_addons/overrides"

module Decidim
  # This namespace holds the logic of the `ProposalAddons` component. This component
  # allows users to create proposal_addons in a participatory space.
  module ProposalAddons
    include ActiveSupport::Configurable

    config_accessor :deface_enabled do
      ENV.fetch("DEFACE_ENABLED", nil) == "true" || Rails.env.test?
    end

  end
end


