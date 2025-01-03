---
layout: page
title: Installation
permalink: /install/
---

## Add Custom Input Modes

On the RetroTink SD card, you will find `inputmodes/input_database.txt`. This file contains custom input modes for the RetroTink 4K. We will need to add the following lines to `input_database.txt` so that the RetroTink 4K can apply the settings from the profiles.

```
{% include input_modes.txt %}
```

There is also a copy of `input_database.txt` included based on the 1.6.9 firmware that you can copy over to the SD card to replace the one that's there. This is only recommended if you have not modified the file.

## Copy Profiles

Simply copy the `profile/Apple PC` folder to the `profile` folder on the RetroTink 4K SD Card. If you have modified these profiles from an earlier version of these profiles, you can copy just the new ones.
