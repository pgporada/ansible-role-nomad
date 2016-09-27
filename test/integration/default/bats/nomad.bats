#!/usr/bin/env bats

@test "Nomad is executable" {
    run nomad -version
    [ "$status" -eq 0 ]
}

@test "Nomad should be started" {
    run systemctl is-active nomad.service
    [ "$status" -eq 0 ]
}
