# Introduction

A containerized version of [Avahi](https://www.avahi.org/) Reflector for Home Assistant, configured to broadcast a .local URL and MQTT service descriptor for the Home Assistant instance it is installed on.

This will allow [Virage WiFi-based devices]((https://www.viragelabs.com/products/) (as well as other devices relying on MQTT) to find and connect to an MQTT broker installed on Home Assistant through automatic (mDNS) network discovery.  Note that this add-on assumes you have installed Mosquitto MQTT broker (or equivalent) on your Home Assistant instance, and that it is accessible on the same IP address as Home Assistant.

## Installation

Go to the **Virage Addon Repository** section, and click on the **Virage Avahi MQTT** icon, and then on **Install** in the subsequent screen.

## Configuration

Click **Add**.  You should now see the **Virage Addon Repository** listed.  You can now close the **Manage add-on repositories** dialog.  To install the Virage Avahi Add-on, scroll to the bottom of the screen, to the **Virage Addon Repository** section, and click on the Virage Avahi MQTT icon, and then on **Install** in the subsequent screen.
=======
Once installation is complete, go to the **Configuration** tab:

Set the **Interface** you want the addon to use (default is eth0, unless you know you are using something different this is probably the correct setting).

Set the **Host Name** as desired.  The default is **viragehub**, however you can set this to whatever you wish to allow your Home Assistant instance to be discoverable on host_name.local.

Save your settings, return to the **Info** tab and click **Start**.  You can check on the **Logs** tab to see that the Add-on started up correctly, you should see:

*Server startup complete. Host name is viragehub.local. Local service cookie is 2929746891.*<br>
*Service "viragehub" (/services/ssh.service) successfully established.*<br>
*Service "viragehub" (/services/sftp-ssh.service) successfully established.*<br>
*Service "Mosquitto MQTT server on viragehub" (/services/mqtt.service) successfully established.*

(with your host_name instead of viragehub, if you changed this value in the settings)

Your Home Assistant instance should now be accessible at host_name.local, and devices should be able to find and connect to the MQTT Broker using mDNS discovery.
