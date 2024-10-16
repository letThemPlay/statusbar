{
  buildGoModule,
  fetchurl,
  ...
}:

let
  pname = "statusbar";
  version = "0.5.3";
in
buildGoModule {
  inherit pname version;

  src = fetchurl {
    url = "https://git.sr.ht/~rkintzi/${pname}/archive/v${version}.tar.gz";
    sha256 = "sha256-t9Qn82bsmStT0sG42MmuYsTwvxNFC1ntGMErQIJbasw=";
  };

  vendorHash = "sha256-yAJmSzT5I+v7uhE/V//KbZL/rZVoSUOhNuH4uqEnDS0=";

  proxyVendor = true;
}
