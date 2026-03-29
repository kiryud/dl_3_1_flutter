MSG ?= 'Makefile : default message'

GREEN  := \033[1;32m
CYAN   := \033[1;36m
YELLOW := \033[1;33m
RESET  := \033[0m

status:
	@printf "$(CYAN)git remote -v$(RESET)\n"
	@git remote -v
	@printf "$(CYAN)git --no-pager config --global --list$(RESET)\n"
	@git --no-pager config --global --list


run:
	@printf "$(CYAN)flutter run --debug$(RESET)\n"
	@flutter run --debug

setting:
	@flutter clean;
	@flutter pub get;
	@flutter pub upgrade;
	@flutter pub outdated;

pull:
	@printf "$(CYAN)git status$(RESET)\n"
	@git status
	@printf "$(CYAN)git fetch$(RESET)\n"
	@git fetch
	@printf "$(CYAN)git pull$(RESET)\n"
	@git pull

push:
	@printf "$(CYAN)git status$(RESET)\n"
	@git status
	@printf "$(CYAN)git add .$(RESET)\n"
	@git add .
	@printf "$(CYAN)git commit -m '$(MSG)'$(RESET)\n"
	@git commit -m "$(MSG)"
	@printf "$(CYAN)git push$(RESET)\n"
	@git push
