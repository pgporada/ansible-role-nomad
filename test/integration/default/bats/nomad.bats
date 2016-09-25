#!/usr/bin/env bats

@test "Nomad should be started" {
    run systemctl is-active nomad.service
    [ "$status" -eq 0 ]
}
