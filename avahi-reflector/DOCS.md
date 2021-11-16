## Configuration

Once installation is complete, go to the **Configuration** tab and set the interface you want the addon to use (default is eth0, unless you know you are using something different this is probably the correct setting).  Next, set the host_name as desired.  The default is **viragehub**, however you can set this to whatever you wish to allow your Home Assistant instance to be discoverable on host_name.local.

Save your settings, return to the **Info** tab and click **Start**.  You can check on the **Logs** tab to see that the Add-on started up correctly, you should see:

*Server startup complete. Host name is viragehub.local. Local service cookie is 2929746891.
Service "viragehub" (/services/ssh.service) successfully established.
Service "viragehub" (/services/sftp-ssh.service) successfully established.
Service "Mosquitto MQTT server on viragehub" (/services/mqtt.service) successfully established.*

(with your host_name instead of viragehub, if you changed this value in the settings)

Your Home Assistant instance should now be accessible at host_name.local, and devices should be able to find and connect to the MQTT Broker using mDNS discovery.
