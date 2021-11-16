# Introduction

This Add-on allows you to control the active cooling in your VirageHub from within Home Assistant.  It creates sensors for both temperature and fan speed, and will change the fan speed in your VirageHub to one of three levels, based on temperature thresholds set in the configuration.

## Installation

To install this Add-on, click on the button below to add the repository to Home Assistant (or manually add the repository https://github.com/viragelabs/addons).

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fviragelabs%2Faddons)

Click **Add**.  You should now see the **Virage Addon Repository** listed.  You can now close the **Manage add-on repositories** dialog.  To install the VirageHub Active Cooling Add-on, scroll to the bottom of the screen, to the **Virage Addon Repository** section, and click on the **VirageHub Active Cooling** icon, and then on **Install** in the subsequent screen.

Note that before using this Add-on, you must you must enable the I<sup>2</sup>C bus on your Raspberry Pi, which can be done using the [Pi4EnableI2C](https://github.com/viragelabs/addons/tree/main/Pi4EnableI2C) Add-on.

## Configuration

Once installation is complete, go to the **Configuration** tab:

### Unit of Measure

Set the Unit of Measure for the temperature (note this impacts the temperatures that the Add-on uses for fan throttling, not the diaplay temperature in the Home Assistant sensor, which is governed by the measurement system set for Home Assistant).

### Fan Speed Threshold Temperatures

The temperature thresholds at which fan speeds will be changed.  At temperatures below the Low threshold, the fan will be off, above Low the fan will be at 33%, above Medium at 66%, and above High at 100%.

### Quiet Fan Speed Profile

This enables a lower-speed range of fan settings for quieter operation.  Note that the system may run significantly hotter if this is enabled and there is not adequate ambient cooling.

### Create Fan Speed and Temperature Sensor Entities

If enabled and the Add-on is (re)started, this setting will create sensors for fan speed and system temperature in Home Assistant.

Once you have made any changes the above (if needed), save your settings, return to the **Info** tab and click **Start**.  You can check on the **Logs** tab to see that the Add-on started up correctly.

### To Manually Add a Repository

From the Supervisor screen in your Home Assistant, go to the Add-on Store tab.  Click the three dots in the upper right corner of the window, and choose **Repositories**.

Copy the following URL (https://github.com/viragelabs/addons) and paste it into the space at the bottom of the **Manage add-on repositories** dialog.
