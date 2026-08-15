FROM ghcr.io/containerpak/gtk3:main

LABEL org.opencontainers.image.source="https://github.com/Containerpak/filezilla"

RUN apt-get update && \
    apt-get install -y --no-install-recommends filezilla && \
    cpak-clean-junk

COPY org.filezillaproject.Filezilla.desktop /usr/share/applications/org.filezillaproject.Filezilla.desktop
