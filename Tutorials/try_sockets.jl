using Sockets

host = "192.168.1.99"
port = 9999

conn = Sockets.connect(host, port)
print(Sockets.readline(conn, keep=true),"\n")

Sockets.write(conn, "m:1:\n")
print(Sockets.readline(conn, keep=true),"\n")

Sockets.write(conn, "m:0:\n")
print(Sockets.readline(conn, keep=true),"\n")

close(conn)

