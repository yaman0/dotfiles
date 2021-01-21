GIT_EMAIL:='yourmail@domain.com'
GIT_NAME:=name
setup-git:
	@git config --global user.email $(GIT_EMAIL)
	@git config --global user.name $(GIT_NAME)