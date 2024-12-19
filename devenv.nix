{ pkgs, ... }:

{
  packages = [ 
    pkgs.bazelisk
    pkgs.git
  ];
}