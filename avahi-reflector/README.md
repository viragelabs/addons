A containerized version of Avahi Reflector for Home Assistant, configured to broadcast a .local URL and MQTT service descriptor for the Home Assistant instance it is installed on.

This will allow Virage WiFi-based devices (as well as other devices relying on MQTT) to find and connect to an MQTT broker installed on Home Assistant through automatic (mDNS) network discovery.  Note that this add-on assumes you have installed Mosquitto MQTT broker (or equivalent) on your Home Assistant instance, and that it is accessible on the same IP address as Home Assistant.

Installation

From the Supervisor screen in your Home Assistant, go to the Add-on Store tab.  Click the three dots in the upper right corner of the window, and choose **Repositories**.

Copy the following URL (https://github.com/viragelabs/addons) and paste it into the space at the bottom of the **Manage add-on repositories** dialog.  Click **Add**.  You should now see the **Virage Addon Repository** listed.

If it was added successfully, you should now see the Virage Addon Repository listed.  You can now close the **Manage add-on repositories** dialog.  To install the Avahi Reflector add-on, scroll to the bottom of the screen, to the **Virage Addon Repository** section, and click on the Avahi Reflector MQTT icon, and then on **Install** in the subsequent screen.

Once installation is complete, go to the **Configuration** tab and set the interface you want the addon to use (default is eth0, unless you know you are using something different this is probably the correct setting).  Next, set the host_name as desired.  The default is **viragehub**, however you can set this to whatever you wish to allow your Home Assistant instance to be discoverable on host_name.local.

Save your settings, return to the **Info** tab and click **Start**.  You can check on the **Logs** tab to see that the Add-on started up correctly, you should see:

*Server startup complete. Host name is viragehub.local. Local service cookie is 2929746891.
Service "viragehub" (/services/ssh.service) successfully established.
Service "viragehub" (/services/sftp-ssh.service) successfully established.
Service "Mosquitto MQTT server on viragehub" (/services/mqtt.service) successfully established.*

(with your host_name instead of viragehub, if you changed this value in the settings)

Your Home Assistant instance should now be accessible at host_name.local, and devices should be able to find and connect to the MQTT Broker using mDNS discovery.


