#!/usr/bin/with-contenv bashio
# ==============================================================================
# Home Assistant Add-on: Avahi Daemon for MQTT
# Configures Avahi-Daemon to broadcast MQTT Service.
# ==============================================================================
readonly AVAHI_CONF='/etc/avahi/avahi-daemon.conf'
declare HOSTNAME
declare INTERFACE

#HOSTNAME=$(bashio::config 'hostname')
#if bashio::var.is_empty "${HOSTNAME}";
if bashio::config.is_empty 'hostname'; then
    bashio::log.warning "Can't read hostname, using default."
		HOSTNAME="viragehub"
else
    HOSTNAME=$(bashio::config 'hostname')
fi

#INTERFACE=$(bashio::config 'interface')
#if bashio::var.is_empty "${INTERFACE}";
if bashio::config.is_empty 'interface'; then
    bashio::log.warning "Can't read interface, using default."
		INTERFACE="eth0"
else
    INTERFACE=$(bashio::config 'interface')
fi



bashio::log.info "Using hostname=${HOSTNAME} interface=${INTERFACE}"

# Write configuration file
    bashio::log.debug "Adding hostname ${HOSTNAME}"
    echo "host-name=${HOSTNAME}" >> ${AVAHI_CONF}
	  bashio::log.debug "Adding interface ${INTERFACE}"
		echo "allow-interfaces=${INTERFACE}" >> ${AVAHI_CONF}
