#!/bin/bash

echo url="https://www.duckdns.org/update?domains=...&token=...&ip=" | curl -k -o ~/duckdns/duck.log -K -
