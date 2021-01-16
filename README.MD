```
docker build . -t mine:test

docker run --rm -e EULA=TRUE mine:test java -Xmx1024M -Xms1024M -Djava.nio.channels.spi.SelectorProvider=sun.nio.ch.PollSelectorProvider -jar server.jar nogui

```
