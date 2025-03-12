{ buildGoModule
, fetchFromGitHub
}:

buildGoModule {
  pname = "fabric-cli";
  version = "0.0.2";

  src = fetchFromGitHub {
    owner = "Fabric-Development";
    repo = "fabric-cli";
    rev = "ed7da8aeed726abb9cb0603efa83b693b91d3159";
    hash = "sha256-NatSzI0vbUxwvrUQnTwKUan0mZYJpH6oyCRaEr0JCB0=";
  };

  vendorHash = "sha256-3ToIL4MmpMBbN8wTaV3UxMbOAcZY8odqJyWpQ7jkXOc="; # Update this after the first build
}
