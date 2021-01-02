FROM archlinux

RUN useradd -ms /bin/bash linuxgamers

RUN pacman -Syyu --noconfirm && \
    pacman -S --needed git base-devel base-devel boost catch2 cmake doxygen ffmpeg fmt git glslang libzip lz4 mbedtls ninja nlohmann-json openssl opus python-pip python2 qt5 sdl2 zlib zstd --noconfirm && \
    pip install conan
