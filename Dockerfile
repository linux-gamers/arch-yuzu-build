FROM archlinux

RUN pacman -Syyu --noconfirm

RUN pacman -S --needed git base-devel ninja cmake sdl2 qt5 python2 python-pip boost catch2 fmt libzip lz4 mbedtls nlohmann-json openssl opus zlib zstd wget --noconfirm

RUN pip install conan
