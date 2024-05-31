.PHONY: install
install:
	install -Dm 0755 envman $(HOME)/.local/bin/envman
	install completions/envman.fish $(HOME)/.config/fish/completions/envman.fish
