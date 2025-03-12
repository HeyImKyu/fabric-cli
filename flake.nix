{
  description = ''
    next-gen framework for building desktop widgets using Python
    (check the rewrite branch for progress)
  '';

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    nixpkgs,
    utils,
    ...
  }:
    utils.lib.eachDefaultSystem (
      system: let
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        formatter = pkgs.nixfmt-rfc-style;
        packages = {
          default = pkgs.callPackage ./fabric-cli.nix {};
        };
      }
    );
}
