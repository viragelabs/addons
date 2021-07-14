#!/usr/bin/with-contenv bashio
# ==============================================================================
# Home Assistant Add-on: Avahi Daemon
# Configures Avahi-Daemon
# ==============================================================================
readonly AVAHI_CONF='/etc/avahi/avahi-daemon.conf'
declare HOSTNAME
declare INTERFACE

#HOSTNAME=$(bashio::config 'host_name')
#if bashio::var.is_empty "${HOSTNAME}";
if bashio::config.is_empty 'host_name'; then
    bashio::log.warning "Can't read hostname, using default."
		HOSTNAME="hassio"
else
    HOSTNAME=$(bashio::config 'host_name')
fi

#INTERFACE=$(bashio::config 'allow_interfaces')
#if bashio::var.is_empty "${INTERFACE}";
if bashio::config.is_empty 'host_name'; then
    bashio::log.warning "Can't read interface, using default."
		INTERFACE="eth0"
else
    INTERFACE=$(bashio::config 'allow_interfaces')
fi



bashio::log.info "Using hostname=${HOSTNAME} interface=${INTERFACE}"

# Write configuration file
    bashio::log.debug "Adding hostname ${HOSTNAME}"
    echo "host-name=${HOSTNAME}" >> ${AVAHI_CONF}
	  bashio::log.debug "Adding interface ${INTERFACE}"
		echo "allow-interfaces=${INTERFACE}" >> ${AVAHI_CONF}
