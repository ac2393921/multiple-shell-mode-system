###[ nushell ]##################################################################

###[ Starship ]#################################################################
let-env STARSHIP_SHELL = "nu"

###[ env ]######################################################################
let-env PROMPT_COMMAND = {
  # jobs are not supported
  let width = (term size -c | get columns | into string)
  starship prompt --cmd-duration $env.CMD_DURATION_MS --status $env.LAST_EXIT_CODE --terminal-width $width
}
let-env PROMPT_COMMAND_RIGHT = ""

let-env PROMPT_INDICATOR = ""
let-env PROMPT_INDICATOR_VI_INSERT = ""
let-env PROMPT_INDICATOR_VI_NORMAL = ""
let-env PROMPT_MULTILINE_INDICATOR = "::: "

let-env ENV_CONVERSIONS = {
  "PATH": {
    from_string: { |s| $s | split row (char esep) }
    to_string: { |v| $v | str collect (char esep) }
  }
  "Path": {
    from_string: { |s| $s | split row (char esep) }
    to_string: { |v| $v | str collect (char esep) }
  }
}

let-env NU_LIB_DIRS = [
    ($nu.config-path | path dirname | path join 'scripts')
]
let-env NU_PLUGIN_DIRS = [
    ($nu.config-path | path dirname | path join 'plugins')
]

###[ alias ]####################################################################
#source ~/dotfiles/.aliases/nushell/alias.nu
source ~/dotfiles/.aliases/nushell/shell.nu
source ~/dotfiles/.aliases/nushell/source.nu
