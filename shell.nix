{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  packages = with pkgs; [
    (rust-bin.stable.latest.default.override {
      extensions = [ "rust-src" "rust-analyzer" ];
      targets = [ "x86_64-unknown-linux-musl" ];
    })
  ];
  RUST_BACKTRACE = 1;
}
