#!/usr/bin/env bats
load test_helpers

@test "[$TEST_FILE] Check that KeePassX is installed" {
    run launch -help
    [[ ${lines[0]} =~ "keepassx: cannot connect to X server" ]]
}
