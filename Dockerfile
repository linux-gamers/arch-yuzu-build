FROM archlinux

RUN useradd -ms /bin/bash linuxgamers

RUN pacman -Syyu --noconfirm && \
    pacman -S --needed git base-devel ninja cmake sdl2 qt5 python2 python-pip boost catch2 fmt libzip lz4 mbedtls nlohmann-json openssl opus zlib zstd doxygen --noconfirm && \
    pip install conan
