
FROM ubuntu:xenial


RUN apt -yqq update; \
    apt -yqq upgrade

RUN apt -yqq install build-essential scons pkg-config libx11-dev libxcursor-dev \
      libxinerama-dev libgl1-mesa-dev libglu-dev libasound2-dev libpulse-dev \
      libfreetype6-dev libssl-dev libudev-dev libxi-dev libxrandr-dev


COPY build-godot.sh /tmp/build-godot.sh
RUN chmod +x /tmp/build-godot.sh


CMD ["./tmp/build-godot.sh"]
