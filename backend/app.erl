-module(app).
-compile(export_all).

start() ->
  io:format("Hello~n"),
  inets:start(httpd, [
    {port, 1337},
    {server_name, "test"},
    {server_root, "."},
    {document_root, "."}
  ]).



