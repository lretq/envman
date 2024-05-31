.PHONY: install
install:
	install -Dm 0755 envman $(HOME)/.local/bin/envman
	install -D extras/envman.fish $(HOME)/.config/fish/functions/envman.fish
	install completions/envman.fish $(HOME)/.config/fish/completions/envman.fish
