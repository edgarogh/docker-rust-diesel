# Docker: [edgarogh/rust-diesel](https://hub.docker.com/r/edgarogh/rust-diesel)

[![Docker Image Version (latest semver)](https://img.shields.io/docker/v/edgarogh/rust-diesel)](https://hub.docker.com/r/edgarogh/rust-diesel)
![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/edgarogh/rust-diesel)

Rust + Diesel CLI on Debian (maybe also Alpine one day)

> _I can't get Alpine Linux to work, feel free to uncomment the lines in `Dockerfile` and `build.sh` and try to make it work._

## Building

To build an image for a given [Rust version](https://github.com/rust-lang/rust/tags) (i.e. `1.59`) and a given [diesel_cli version](https://crates.io/crates/diesel_cli/versions) (i.e. `1.4.1`):

```
./build.sh 1.59 1.4.1
```

