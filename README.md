# Gettext memory issue

The file `./gen.sh` generates several `po` files to compile
The files are already commited to this repo. The file is there in case you want to tweek the number of files

Compiling with erlang 23.1.1 uses extremely high RAM (see it going up to 30GB), both on elixir 1.10.1 and 1.11.1
