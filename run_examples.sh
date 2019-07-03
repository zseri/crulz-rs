#!/bin/bash

cd "$(dirname "$0")"
cargo build --release
echo

for i in examples/*; do
  echo "$i"
  time target/release/crulz "$@" "$i"
  echo
done
