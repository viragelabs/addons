No configuration is needed to run this Add-on.

After installing it, start it and read the Logs (be sure to click **Refresh**).  After the first run, the log entry will indicate that you will need to perform a hard (i.e. disconnect power from the Pi) reboot.  This cycle places the files needed for the I2C bus to work.

When Home Assistant restarts, start the Add-on again and read the Logs.  The logs will again indicate that you need to perform a hard reboot.  This cycle enables the I2C bus.

After Home Assistant restarts, start the Add-On again, and it should indicate in the Logs that I2C is properly installed.  You may now uninstall the Add-on - it is not needed for continued use of the I2C bus.
