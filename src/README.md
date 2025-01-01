# RetroTink 4K Apple Profiles

## About Me

This package contains profiles to use with older Apple Hardware as a solid starting point for the RetroTink 4K.

## Included Profiles

All included profiles are configured to use integer scaling and HDR by default. When setting these up, you will need to do the following:

- Run Auto-Phase and Auto-Gain for each mode.
- Check cropping and adjust if needed for each mode.

By default, the CRT mask is disabled in these profiles. However it can be enabled in the RetroTink advanced settings. I haven't found a great configuration here, but you are welcome to play with it. HDR is recommended when using a CRT mask.

### Macintosh Quadra 605

This is meant to be used with 68K Macs that have an Apple DB-15 video output and a VGA adapter, when running System 7 or MacOS 8. It may work for PPC Macs that included a DB-15 video port as well, but I don't currently have a machine to test with.

This adapter is currently available and was used to develop the profile: https://www.amazon.com/dp/B0016OC1J2 (PTC MAC to VGA Adapter, DB15 Male to HD15 Female w/10 Dip Switches)

When the DIP switches configured as 'Multiple Scan 21"' (14679), it will provide 3 modes that have all been dialed in:

Tuned Display Modes:
- 640x480 @ 67Hz
- 832x624 @ 75Hz
- 1024x768 @ 75Hz

### PowerMac Quicksilver G4

This profile is aimed at later Macs that have a video card with VGA output. This specific profile was tested using a GeForce 2MX on MacOS 9.2.2.

It is recommended to use SwitchRes to make it easier to pick the tuned video modes. Because of how the RetroTink works, there is a lot of noise in the Recommended/All list coming from the Monitors control panel and control strip.

Tuned Display Modes:
- 640x480 @ 60Hz
- 800x600 @ 60Hz
- 832x624 @ 75Hz
- 1024x768 @ 60Hz
- 1280x1024 @ 60Hz
- 1600x1200 @ 60Hz
- 1920x1080 @ 60Hz

## How to Install

1. Add Custom Input Modes

On the RetroTink SD card, you will find `inputmodes/input_database.txt`. This file contains
custom input modes for the RetroTink 4K. We will need to add the following lines to

There is also a copy of `input_database.txt` included based on the 1.6.9 firmware.

```
74.0, 76.0, 666, 670, 0, 0, 0, 288, 832, 1152, 42, 624, 669, 2304, 1.0, 12, Mac 832x624
74.0, 76.0, 912, 917, 0, 0, 0, 384, 1152, 1600, 42, 870, 915, 1600, 1.0, 13, Mac 1152x860
58.0, 62.0, 1248, 1252, 0, 0, 0, 496, 1600, 2160, 49, 1200, 1250, 2160, 1.0, 14, Mac UXGA
58.0, 62.0, 1115, 1120, 0, 0, 0, 532, 1920, 2576, 37, 1080, 1118, 2576, 1.0, 15, Mac 1080p
```

2. Copy Apple Profiles

Simply copy the `profile/Apple` folder to the `profile` folder on the RetroTink 4K SD Card.

## Notes

* While there is an included `Mac 1152x860` input mode, it currently doesn't work all that well because the horizontal timing information is incorrect, and I haven't yet had time to dial it in.

* When using integer scaling, some display modes will fill more of the screen than others. 4K displays seem to work best with 640x480, 832x624, 1280x1024 and 1920x1080. 1440p displays seem to work best with 640x480, 832x624 and 1600x1200.
