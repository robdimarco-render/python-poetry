#!/usr/bin/env bash
# exit on error
set -o errexit

poetry install
bun install
