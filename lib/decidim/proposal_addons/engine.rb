# frozen_string_literal: true

require "rails"
require "decidim/core"

module Decidim
  module ProposalAddons
    # This is the engine that runs on the public interface of proposal_addons.
    class Engine < ::Rails::Engine
      isolate_namespace Decidim::ProposalAddons

      routes do
        # Add engine routes here
        # resources :proposal_addons
        # root to: "proposal_addons#index"
      end

      initializer "decidim.proposal_addons.views" do
        Rails.application.configure do
          config.deface.enabled = Decidim::ProposalAddons.deface_enabled
        end
      end

      # this is an example on how to load an initializer with hooks. In current example we use
      # after hook, which means that you'll be able to extend any module when the rails core module
      # has been executed "decidim.action_controller"
      # initializer "decidim.proposal_addons.action_controller", after: "decidim.action_controller" do
      #   config.to_prepare do
      #     ActiveSupport.on_load :action_controller do
      #
      #     end
      #   end
      # end

      # this is an example on how to load overrides defined in lib/decidim/proposal_addons/overrides.rb
      initializer "decidim.proposal_addons.overrides.proposal" do
        Rails.application.reloader.to_prepare do
          # Decidim::Amendable::AnnouncementCell.prepend Decidim::CustomProposalStates::Overrides::AnnouncementCell
        end
      end

      initializer "decidim.proposal_addons.register.add_cells_view_paths" do
        Cell::ViewModel.view_paths << File.expand_path("#{Decidim::ProposalAddons::Engine.root}/app/cells")
        Cell::ViewModel.view_paths << File.expand_path("#{Decidim::ProposalAddons::Engine.root}/app/views") # for partials
      end

      initializer "decidim.proposal_addons.webpacker.assets_path" do
        Decidim.register_assets_path File.expand_path("app/packs", root)
      end
    end
  end
end
