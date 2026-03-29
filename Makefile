MSG = "Makefile : default message"


run:
	flutter run --debug

setting:
	flutter clean;
	flutter pub get;
	flutter pub upgrade;
	flutter pub outdated;

pull:
	git status;
	git fetch
	git pull

push:
	git status;
	git add .
	git commit -m $(MSG)
	git push
