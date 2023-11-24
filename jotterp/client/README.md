# Challenge

The server can be run with
```
cd framework && docker run -e FLAG=flag --network host $(docker build -q .)
```

The goal is to get the flag set in the environment variable.

# Client

Optional environment setup is `./setup.sh`.

Use `./run.sh` to run.
