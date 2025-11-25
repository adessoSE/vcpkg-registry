#!/usr/bin/env pwsh

$scriptDir = Split-Path -Parent $PSCommandPath

& vcpkg install --overlay-ports="$scriptDir\..\ports" @args
