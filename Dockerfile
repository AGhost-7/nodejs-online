FROM aghost7/nodejs-dev:boron

RUN sudo apt-get update && \
		sudo apt-get install -y cmake g++ pkg-config && \
    sudo apt-get install -y vim-common libwebsockets-dev libjson-c-dev libssl-dev && \
    git clone --depth=1 --branch 1.2.2 https://github.com/tsl0922/ttyd.git /tmp/ttyd && \
    cd /tmp/ttyd && \
		mkdir build && \
		cd build && \
    cmake .. && \
		make && \
		sudo make install && \
    rm -rf /tmp/ttyd && \
		sudo apt-get purge -y cmake g++ pkg-config && \
    sudo rm -rf /var/lib/apt/lists/*

EXPOSE 7681

ENTRYPOINT ["ttyd"]

CMD ["bash"]
