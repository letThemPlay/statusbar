# Simple flake for (statusbar)[https://git.sr.ht/~rkintzi/statusbar]

## Installation

It is recommended to use the flake

Add to your flake inputs


````
    inputs.statusbar.url = "github:letThemPlay/statusbar";
````

Either pass in statusbar into your specialArgs or use inputs in your specialArgs when configuring your nixosSystem e.g.

````
  myHost = nixosSystem {
    inherit system pkgs;
    specialArgs = {
      inherit
        statusbar
    }
  }

````

Finally add it into your systempackages

````
    { statusbar, pkgs, ... }:

    environment.systemPackages = [ statusbar.packages.${pkgs.system}.default ];
````
