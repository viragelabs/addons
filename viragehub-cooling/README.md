# Introduction

This Add-on allows you to control the active cooling in your [VirageHub](https://www.viragelabs.com/products/#hub) from within Home Assistant.  It creates sensors for both temperature and fan speed, and will change the fan speed in your VirageHub to one of three levels, based on temperature thresholds set in the configuration.

Thanks to [Adam Outler](https://github.com/adamoutler) for creating the initial version of this add-on.

## Installation

Go to the **Virage Addon Repository** section of the Add-on Store, click on the **VirageHub Active Cooling** icon, and then on **Install** in the subsequent screen.

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

