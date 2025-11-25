#!/usr/bin/env pwsh

$scriptDir = Split-Path -Parent $PSCommandPath

& vcpkg --x-builtin-ports-root="$scriptDir\..\ports" format-manifest @args
