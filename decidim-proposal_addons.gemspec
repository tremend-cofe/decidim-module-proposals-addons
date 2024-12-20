# frozen_string_literal: true

$LOAD_PATH.push File.expand_path("lib", __dir__)

require "decidim/proposal_addons/version"

Gem::Specification.new do |s|
  s.version = Decidim::ProposalAddons.version
  s.authors = ["Alexandru Emil Lupu"]
  s.email = ["contact@alecslupu.ro"]
  s.license = "AGPL-3.0"
  s.homepage = "https://decidim.org"
  s.metadata = {
    "bug_tracker_uri" => "https://github.com/decidim/decidim/issues",
    "documentation_uri" => "https://docs.decidim.org/",
    "funding_uri" => "https://opencollective.com/decidim",
    "homepage_uri" => "https://decidim.org",
    "source_code_uri" => "https://github.com/decidim/decidim"
  }
  s.required_ruby_version = ">= 3.2"

  s.name = "decidim-proposal_addons"
  s.summary = "A decidim proposal_addons module"
  s.description = "Proposal guest voting addons."

  s.files = Dir["{app,config,lib}/**/*", "LICENSE-AGPLv3.txt", "Rakefile", "README.md"]

  s.add_dependency "decidim-core", Decidim::ProposalAddons.version
  s.add_dependency "decidim-proposals", Decidim::ProposalAddons.version
  s.add_dependency "deface", "~> 1.9.0"

  s.add_development_dependency "decidim-participatory_process", Decidim::ProposalAddons.version
  s.add_development_dependency "decidim-dev", Decidim::ProposalAddons.version
end
