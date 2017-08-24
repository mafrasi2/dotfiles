set fish_greeting ""
set PATH $PATH ~/.local/bin
set -x EDITOR nvim


if test -z "$SSH_ENV"
    set -xg SSH_ENV $HOME/.ssh/environment
end

if not __ssh_agent_is_started
    __ssh_agent_start
end
