#!/bin/bash
set -e

upstream='https://github.com/cpuguy83/go-md2man.git'

if ! git remote | grep -q upstream; then
	( set -x; git remote add upstream "$upstream" )
fi
