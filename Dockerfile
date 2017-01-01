FROM aghost7/nodejs-dev:boron

COPY ./build.sh /tmp/build.sh

RUN bash /tmp/build.sh && \
	sudo rm /tmp/build.sh

# ttyd is based on xterm so set the environment
# variable properly.
ENV TERM xterm-256color

EXPOSE 7681

ENTRYPOINT ["ttyd"]

CMD ["bash"]
