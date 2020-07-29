FROM archlinux

RUN useradd -ms /bin/bash linuxgamers

RUN pacman -Syyu --noconfirm && \
    pacman -S --needed git base-devel ninja cmake sdl2 qt5 python2 python-pip python-requests boost catch2 fmt libzip lz4 mbedtls nlohmann-json openssl opus zlib zstd wget openssh desktop-file-utils libfdk-aac --noconfirm && \
    pip install conan
