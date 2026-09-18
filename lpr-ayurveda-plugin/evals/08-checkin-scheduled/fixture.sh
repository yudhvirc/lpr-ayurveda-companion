#!/usr/bin/env bash
# Seeds ./profile in the empty eval workspace. Runs only with --scaffold.
set -euo pipefail
here="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
bash "$here/../_fixture-profile.sh"
