---
layout: page
title: Installation
permalink: /install/
---

## Add Custom Input Modes

On the RetroTink SD card, you will find `inputmodes/input_database.txt`. This file contains custom input modes for the RetroTink 4K. We will need to add the following lines to `input_database.txt` so that the RetroTink 4K can apply the settings from the profiles.

```
74.0, 76.0, 666, 670, 0, 0, 0, 288, 832, 1152, 42, 624, 669, 2304, 1.0, 12, Mac 832x624
74.0, 76.0, 912, 917, 0, 0, 0, 384, 1152, 1600, 42, 870, 915, 1600, 1.0, 13, Mac 1152x860
58.0, 62.0, 1248, 1252, 0, 0, 0, 496, 1600, 2160, 49, 1200, 1250, 2160, 1.0, 14, Mac UXGA
58.0, 62.0, 1115, 1120, 0, 0, 0, 532, 1920, 2576, 37, 1080, 1118, 2576, 1.0, 15, Mac 1080p
```

There is also a copy of `input_database.txt` included based on the 1.6.9 firmware that you can copy over to the SD card to replace the one that's there. This is only recommended if you have not modified the file.

## Copy Profiles

Simply copy the `profile/Apple` folder to the `profile` folder on the RetroTink 4K SD Card.
