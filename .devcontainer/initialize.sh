#!/bin/sh

# Creates an empty path for the GitHub CLI config if none is available
# Otherwise, the container will fail to build due to the bind mount
mkdir -p "${HOME}/.config/gh"
