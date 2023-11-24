#!/bin/sh

set -eux

pushd .
cd framework && cargo clean \
  && cd chall && cargo clean
popd

pushd .
cd client/framework-solve && cargo clean
popd

tar chzvf chall.tar.gz client

rm -rf test
mkdir test
cp chall.tar.gz ./test

cd test
tar xzf chall.tar.gz
