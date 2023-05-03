#!/usr/bin/env bash
set -euo pipefail

session_name=$(tmux display-message -p "#S")
session_sha=$(echo -n "${session_name}" | xxh32sum | cut -c1-2)
colour_id=$((16#${session_sha}))

echo "colour$colour_id"
