MSG ?= 'Makefile : default message'

GREEN  := \033[1;32m
CYAN   := \033[1;36m
YELLOW := \033[1;33m
RESET  := \033[0m

status:
	@printf "$(GREEN)git remote -v$(RESET)\n"
	@git remote -v
	@printf "$(GREEN)git --no-pager config --global --list$(RESET)\n"
	@git --no-pager config --global --list


run:
	@printf "$(GREEN)flutter run --debug$(RESET)\n"
	@flutter run --debug

setting:
	@flutter clean;
	@flutter pub get;
	@flutter pub upgrade;
	@flutter pub outdated;

pull:
	@printf "$(GREEN)git status$(RESET)\n"
	@git status
	@printf "$(GREEN)git fetch$(RESET)\n"
	@git fetch
	@printf "$(GREEN)git pull$(RESET)\n"
	@git pull

push:
	@printf "$(GREEN)git status$(RESET)\n"
	@git status
	@printf "$(GREEN)git add .$(RESET)\n"
	@git add .
	@printf "$(GREEN)git commit -m "$(MSG)"$(RESET)\n"
	@git commit -m "$(MSG)"
	@printf "$(GREEN)git push$(RESET)\n"
	@git push
