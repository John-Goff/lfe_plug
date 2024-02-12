# LfePlug

This is an example of using Plug from Lisp Flavoured Erlang.

## Caveats

At time of writing, it's possible to write a module based plug in LFE and use that plug
in a router written in Elixir. It's not possible to write the router in LFE, as it's
heavily macro based.

There is an issue when writing the main application in LFE. Upon compiling for the first
time, you'll recieve an error like this

```
==> lfe_plug
Compiling 2 files (.lfe)

21:25:06.966 [error] beam/beam_load.c(144): Error loading module application:
  corrupt file header
```

If this happens, simply stopping with `CTRL-c` and then restarting compilation seems to
work.

## Running

You will need Elixir and Erlang installed, see https://elixir-lang.org for installation
instructions.

Clone this repo to your computer, `cd` into the repo, and install dependencies with
`mix deps.get`. 

You can now run the server with `mix run --no-halt`. The server is now running and
accessible at the URL `http://localhost:7159/`.
