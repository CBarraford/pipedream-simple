FROM golang

COPY simple.go /simple.go

# add pipeview script
COPY pipeview.bash /pipeview.bash

EXPOSE 8888

ENTRYPOINT ["/pipeview.bash"]
