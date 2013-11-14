lua-resty-mocket
================
Simple mocking library for ngx_lua's [tcp](https://github.com/chaoslawful/lua-nginx-module/blob/master/README.markdown#ngxsockettcp) and [udp](https://github.com/chaoslawful/lua-nginx-module/blob/master/README.markdown#ngxsocketudp) sockets.

Allows easy performance testing of socket logic without actually making thousands of connections

```lua

Mocket = require("resty.mocket")

local sock = Mocket("tcp")

timer:start()
for i=1,10000 do
  my_module:do_socket_logic(sock)
end
timer:stop()

```
