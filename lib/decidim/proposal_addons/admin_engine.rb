# frozen_string_literal: true

module Decidim
  module ProposalAddons
    # This is the engine that runs on the public interface of `ProposalAddons`.
    class AdminEngine < ::Rails::Engine
      isolate_namespace Decidim::ProposalAddons::Admin

      paths["db/migrate"] = nil
      paths["lib/tasks"] = nil

      routes do
        # Add admin engine routes here
        # resources :proposal_addons do
        #   collection do
        #     resources :exports, only: [:create]
        #   end
        # end
        # root to: "proposal_addons#index"
      end

      # this is an example on how to mount an engine to a specific path.
      # In this particular example, we mount the Decidim::ProposalAddons::AdminEngine under Decidim::Proposals::AdminEngine
      # to obtain an url like : https://nightly.decidim.org/admin/participatory_processes/$process_slug/components/$component_id/manage/proposal_states
      #
      # initializer "decidim_custom_proposal_states_admin.mount_routes" do |_app|
      #   Decidim::Proposals::AdminEngine.routes do
      #     mount Decidim::ProposalAddons::AdminEngine => "/proposal_states", as: "custom_proposal_states"
      #   end
      # end


      def load_seed
        nil
      end
    end
  end
end
