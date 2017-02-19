FROM golang

COPY simple.go /simple.go

# add pipeview script
COPY pipeview.bash /pipeview.bash

EXPOSE 8080

ENTRYPOINT ["/pipeview.bash"]
