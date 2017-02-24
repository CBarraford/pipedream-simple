FROM golang

COPY simple.go /simple.go

# add pipedream script
COPY pipedream.bash /pipedream.bash

EXPOSE 8888

ENTRYPOINT ["/pipedream.bash"]
