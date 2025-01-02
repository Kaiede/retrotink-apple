---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

title: Home
layout: page
---

Old Macintosh systems can use some Apple-specific display modes or timings that don't quite line up with what the RetroTink expects. They can also use different refresh rates that require tweaks to get things looking their best.

This is a package of RetroTink profiles and custom modes that make it easier to use vintage Macintosh systems with the RetroTink 4K. Much of this is an early work in progress based on a couple of vintage systems I own.

## Included Profiles

### Quadra 605

Aimed at early machines that include an Apple DB-15 video port and a VGA adapter. Should work with most 68K machines, and even early PowerPC machines. Has only been tested with System 7 and MacOS 8.1.

Tuned for 640x480 @ 67Hz, 832x624 @ 75Hz and 1024x768 @ 75Hz.

![Image](img/QuicksilverSwitchRes.jpg){: .right-image}

### VGA GPU Profiles

These are a collection of VGA profiles based on different video cards of the era. So far there are:


- ATI Rage 128 - VGA
- GeForce2 MX - VGA

These include an array of tuned display modes out of the box. However, it is highly recommended to use SwitchRes when using the RetroTink 4K like this. The RetroTink doesn't adjust to different timings caused by different refresh rates at the same resolution all that well, and MacOS doesn't know which refresh rates the profiles have been tuned for. Using SwitchRes, you can easily limit the list of modes to the ones the profiles have been tuned for, and will work best with modern displays at 60Hz.

These profiles can also serve as a starting point for other VGA GPUs of the era if you want to experiment.

## Custom Timings

#### Apple Specific Modes:
- Macintosh 512x384
- Macintosh 832x624
- Macintosh 1152x860

#### Unusual Apple Timings over VGA:
- Macintosh 1600x1200 (UXGA)
- Macintosh 1920x1080

## Changelog

{% include changelog.md %}
