.PHONY= setup-git zsh remove-zsh

GIT_EMAIL:='yourmail@domain.com'
GIT_NAME:=name

setup-git:
	@git config --global user.email $(GIT_EMAIL)
	@git config --global user.name $(GIT_NAME)


zsh: $(HOME)/.zshrc ## Install zshrc

$(HOME)/.zshrc: .zshrc $(HOME)/.antigen.zsh $(shell whereis zsh)
	@echo "================== SETUP ZSHRC   =================="
	cp .zshrc $@

$(HOME)/.antigen.zsh:
	@echo "================== SETUP ANTIGEN =================="
	curl -L git.io/antigen > $@

$(shell whereis zsh):
	@echo "================== INSTALL ZSH   =================="
	sudo apt install zsh
	chsh -s /usr/bin/zsh
