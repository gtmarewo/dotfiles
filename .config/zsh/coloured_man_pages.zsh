# a function wrapper that allows man to work with colors via bat
function m() {
  command man $1 | bat --language=man --plain
}



