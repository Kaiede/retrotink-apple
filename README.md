# RetroTink 4K Profiles for Apple Computers

This package contains profiles to use with older Apple Hardware as a solid starting point for the RetroTink 4K.

## Getting Started

All included profiles are configured to use integer scaling by default. When setting these up, you will need to do the following:

- Run Auto-Phase and Auto-Gain for each mode.
- Check cropping and adjust if needed for each mode.
- Don't forget to save the profile changes afterwards.

By default, the CRT mask is disabled in these profiles. However it can be enabled in the RetroTink advanced settings. I haven't found great settings on higher resolution modes, but I do think the A Grill Dense masks are a good starting point to mimic Apple monitors.

When using one of the 60Hz display modes and a VRR compatible monitor, GenLock seems to work quite well.

When using integer scaling for the sharpest picture, some display modes will fill more of the screen than others. 4K displays seem to work best with 640x480, 832x624, 1280x1024 and 1920x1080. 1440p displays seem to work best with 640x480, 832x624 and 1600x1200.

## Custom Input Modes

Included in this package is a set of custom inputs modes to allow these profiles to include settings for many different display modes that are already tuned and ready to go. It also can help quickly create and dial in new profiles.

Apple Specific Modes:
- Macintosh 512x384
- Macintosh 832x624
- Macintosh 1152x860

Unusual Apple Timings over VGA:
- Macintosh 1600x1200 (UXGA)
- Macintosh 1920x1080

## Included Profiles

### Quadra 605

Aimed at early machines that include an Apple DB-15 video port and a VGA adapter. Should work with most 68K machines, and even early PowerPC machines. Has only been tested with System 7 and MacOS 8.1.

Tuned for 640x480 @ 67Hz, 832x624 @ 75Hz and 1024x768 @ 75Hz.

### VGA GPU Profiles

These are a collection of VGA profiles based on different video cards of the era. So far there are:

- ATI Rage 128 - VGA
- GeForce2 MX - VGA

These include an array of tuned display modes out of the box. However, it is highly recommended to use SwitchRes when using the RetroTink 4K like this. The RetroTink doesn't adjust to different timings caused by different refresh rates at the same resolution all that well, and MacOS doesn't know which refresh rates the profiles have been tuned for. Using SwitchRes, you can easily limit the list of modes to the ones the profiles have been tuned for, and will work best with modern displays at 60Hz.

These profiles can also serve as a starting point for other VGA GPUs of the era if you want to experiment.

Tuned Display Modes:
- 512x384 @ 60Hz
- 640x480 @ 60Hz
- 800x600 @ 60Hz
- 832x624 @ 75Hz
- 1024x768 @ 60Hz
- 1152x870 @ 75Hz
- 1280x1024 @ 60Hz
- 1600x1200 @ 60Hz
- 1920x1080 @ 60Hz
