#!/usr/bin/env bash
# use testnet settings,  if you need mainnet,  use ~/.ebou/eboud.pid file instead
export LC_ALL=C

ebou_pid=$(<~/.ebou/testnet3/eboud.pid)
sudo gdb -batch -ex "source debug.gdb" eboud ${ebou_pid}
