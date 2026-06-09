{
  description = "Akeyless Custom Server Kustomize patches for custom dynamic and rotated secrets";

  inputs = {
    nixpkgs.follows = "substrate/nixpkgs";
    substrate = {
      url = "github:pleme-io/substrate";
    };
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = inputs:
    (import "${inputs.substrate}/lib/repo-flake.nix" {
      inherit (inputs) nixpkgs flake-utils;
    }) {
      self = inputs.self;
      language = "kustomize";
      description = "Akeyless Custom Server Kustomize patches for custom dynamic and rotated secrets";
    };
}
