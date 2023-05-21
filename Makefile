.DEFAULT_GOAL := all

media:
	mkdir media

gluetun:
	mkdir gluetun

qbittorrent:
	mkdir qbittorrent

jackett:
	mkdir jackett

radarr: media
	mkdir radarr
	mkdir media/movies

sonarr: media
	mkdir sonarr
	mkdir media/shows

plex:
	mkdir plex

.PHONY: all
all: media gluetun qbittorrent jackett radarr sonarr plex

.PHONY: clean
clean:
	rm -rf media
	rm -rf gluetun
	rm -rf qbittorrent
	rm -rf jackett
	rm -rf radarr
	rm -rf sonarr
	rm -rf plex
