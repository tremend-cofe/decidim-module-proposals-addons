# frozen_string_literal: true

base_path = File.expand_path("..", __dir__)

Decidim::Webpacker.register_path("#{base_path}/app/packs")
Decidim::Webpacker.register_entrypoints(
  decidim_proposal_addons: "#{base_path}/app/packs/entrypoints/decidim_proposal_addons.js"
)
Decidim::Webpacker.register_stylesheet_import("stylesheets/decidim/proposal_addons/proposal_addons")
