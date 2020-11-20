#!/bin/bash

# General settings
export OPENPAAS_HOSTNAME="openpaas.sandbox.integration-open-paas.org"
export OPENPAAS_PORT="443"
export OPENPAAS_PROTOCOL="https"
export WEBSOCKET_HOSTNAME="${OPENPAAS_HOSTNAME}"
export WEBSOCKET_PORT="${OPENPAAS_PORT}"
export WEBSOCKET_PROTOCOL="wss"
export JMAP_HOSTNAME="${OPENPAAS_HOSTNAME}"
export JMAP_PORT="1080"
export JMAP_PROTOCOL="${OPENPAAS_PROTOCOL}"

# Load settings
export INJECT_DURATION="10"  # seconds
export SCENARIO_DURATION="10" # seconds
export USER_COUNT="1"

export HUMAN_ACTION_MIN_DELAY="7" # seconds
export HUMAN_ACTION_MAX_DELAY="15" # seconds

# Authentication
export AUTHENTICATION_STRATEGY="lemonldap"
export LEMONLDAP_PORTAL_HOSTNAME="auth.sandbox.integration-open-paas.org"

export PLATFORM_ADMIN_USER="admin@open-paas.org"
export PLATFORM_ADMIN_PWD="ah! ah!"

export OIDC_CLIENT="openpaas"
