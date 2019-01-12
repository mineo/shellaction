workflow "Shellcheck" {
  on = "push"
  resolves = ["Syntax check"]
}

action "Syntax check" {
  uses = "actions/bin/shellcheck@master"
  args = "bla.sh   "
}
