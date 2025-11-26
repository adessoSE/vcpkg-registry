#!/usr/bin/env pwsh

$scriptDir = Split-Path -Parent $PSCommandPath

& vcpkg --x-builtin-ports-root="$scriptDir\..\ports" --x-builtin-registry-versions-dir="$scriptDir\..\versions" x-add-version @args
