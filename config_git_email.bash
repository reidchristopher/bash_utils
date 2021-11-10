#!/bin/bash

if [[ $1 = swri ]]; then
    echo "Setting user.email to reid.christopher@swri.org"
    git config user.email reid.christopher@swri.org
elif [[ $1 = yahoo ]]; then
    echo "Setting user.email to reid.christopher@yahoo.com"
    git config user.email reid.christopher@yahoo.com
else
    echo "Invalid choice: '$1'. No email configured."
fi
