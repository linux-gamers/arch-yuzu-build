FROM archlinux

RUN pacman -Syyu --noconfirm && \
    pacman -S --needed git base-devel ninja cmake sdl2 qt5 python2 python-pip python-requests boost catch2 fmt libzip lz4 mbedtls nlohmann-json openssl opus zlib zstd wget --noconfirm && \
    pip install conan
