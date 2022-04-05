PREFIX=edgarogh/
RUST_VERSION=$1
DIESEL_VERSION=$2

echo Building debian
docker build . --build-arg RUST_VERSION=$RUST_VERSION --build-arg DIESEL_VERSION=$DIESEL_VERSION -t $PREFIX"rust-diesel:$1-$2"
# Doesn't work, help wanted
#echo Building alpine
#docker build . --build-arg RUST_VERSION=$RUST_VERSION --build-arg DIESEL_VERSION=$DIESEL_VERSION --build-arg "VARIANT=-alpine" -t $PREFIX"rust-diesel:$1-$2-alpine"
