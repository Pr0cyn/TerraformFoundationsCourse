cat << EOF >> ~/.ssh/config

HOST ${hostname}
    hostname ${hostname}
    User ${user}
    IdentityFile ${identityfile}
EOF