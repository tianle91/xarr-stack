.DEFAULT_GOAL := all

downloads:
	mkdir downloads

torrent_config:
	mkdir torrent_config

jackett_config:
	mkdir jackett_config

media:
	mkdir media

radarr_config: media
	mkdir radarr_config
	mkdir media/movies

sonarr_config: media
	mkdir sonarr_config
	mkdir media/tv

.PHONY: all
all: downloads torrent_config jackett_config radarr_config sonarr_config

.PHONY: clean
clean:
	rm -rf downloads
	rm -rf torrent_config
	rm -rf jackett_config
	rm -rf media
	rm -rf radar_config
	rm -rf sonarr_config
