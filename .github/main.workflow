workflow "Shellcheck" {
  on = "push"
  resolves = ["actions/bin/sh@master"]
}

action "Syntax check" {
  uses = "actions/bin/shellcheck@master"
  args = "bla.sh   "
}

action "actions/bin/sh@master" {
  uses = "actions/bin/sh@master"
  needs = ["Syntax check"]
  args = ["echo", "foo"]
}
