#!/usr/bin/env bats

@test "Nomad is executable" {
    run nomad -version
    [ "$status" -eq 0 ]
}

@test "Nomad service unit should be started" {
    run systemctl is-active nomad.service
    [ "$status" -eq 0 ]
}

@test "Nomad service unit should be stopped" {
    run bash -c "systemctl stop nomad.service && systemctl is-active nomad.service"
    [ "$status" -ne 0 ]
}

@test "Nomad" {
# TO-DO
	skip
}
