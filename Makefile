.DEFAULT_GOAL := all

media:
	mkdir media

gluetun:
	mkdir gluetun

qbittorrent:
	mkdir qbittorrent

prowlarr:
	mkdir prowlarr

radarr: media
	mkdir radarr
	mkdir media/movies

sonarr: media
	mkdir sonarr
	mkdir media/shows

bazarr: media
	mkdir bazarr

plex:
	mkdir plex

.PHONY: all
all: media gluetun qbittorrent prowlarr radarr sonarr plex

.PHONY: clean
clean:
	rm -rf media
	rm -rf gluetun
	rm -rf qbittorrent
	rm -rf prowlarr
	rm -rf radarr
	rm -rf sonarr
	rm -rf bazarr
	rm -rf plex
