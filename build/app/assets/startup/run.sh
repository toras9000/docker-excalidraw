#!/bin/sh

if [ -n "${REACT_APP_WS_SERVER_URL}" ]; then
    find /usr/share/nginx/html -type f -exec sed -i -E "s|https://dummy-collaboration-server\\.example|${REACT_APP_WS_SERVER_URL}|g" '{}' \;
fi

exec nginx -g "daemon off;"
