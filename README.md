# Envman

For a long time I searched for a very very simple environment manager, but I didn't find one that fit my needs.
Thus, I quickly hacked together the `envman`. It's very simplistic!

## Installation
Installing is very simple. Currently you can only install from source to `~/.local/bin` but that can be changed easily. 
The script has zero dependencies, you can simply copy it wherever on your path. After you have envman installed locally, 
append the output of `envman shell` to your shell rc file (e.g. bashrc, config.fish, ...).

## Usage
To view all commands and options, simply execute `envman` without any args. It will print the help text.
<br>
To create an environment, simply run `envman new <environement name>`. If you answer the follow-up question with 1), it will open 
an instance of your `$EDITOR`. Your new environment will be set as the default (active) environment.
<br>
Other important subcommands are `edit`, `activate`, `active` and `list`, all (hopefully) self explanatory. 

## Other Features
- If you use the `fish` shell, there are ready made completions and an envman plugin, that will automatically try to set/unset your environment variables if you switch the active env.
