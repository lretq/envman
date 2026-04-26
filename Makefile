.PHONY: install
install:
	install -Dm 0755 envman $(HOME)/.local/bin/envman

.PHONY: install-fish
install-fish:
	mkdir -p $(HOME)/.config/fish/functions $(HOME)/.config/fish/completions
	install -D extras/envman.fish $(HOME)/.config/fish/functions/envman.fish
	install completions/envman.fish $(HOME)/.config/fish/completions/envman.fish
