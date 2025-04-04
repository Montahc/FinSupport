# FinSupport

FinSupport is a utility for dice makers who create 3d printed masters.  It automates a tedious task, namely the creation of fin style supports along the edges of the dice as seen here: https://youtu.be/cG1zigTs0-k?t=172

How to Use:
Either install AutoHotkey, or use the premade executable file.  Run either version of the script, and open the Chitubox window with your model in it. (This was designed for Chitubox, but might work in other slicers)

The program has five commands:

Primary Commands: 

Ctrl+1 : Set Point A (usually the downward facing point of the model)

Ctrl+2 : Set Point B (Usually one of the outward points of the model)

Ctrl+3 : Click between point A and B at regular intervals.

Settings Commands:

Ctrl+` : Set the number of divisions (default is 40)

Ctrl+TAB : Set the double click delay in ms (default is 100)

Tips:
1. This works based on the position of the die in your screen.  Every time you reposition your view, you need to reset both points.
2. Do not hold ctrl down while running Ctrl+3.  Press the command and then release the keys, otherwise Chitubox will go into drag selection mode.
3. If your supports are conflicting, try making them thinner diameter.  Usually the supports fuse into one solid fin anyway, which should be plenty strong enough.

CHANGELOG
V1.1
-Added a sleep delay to help with Chitubox 2.0 not liking very fast clicking.  I expect the severity of this problem could be different based on your computer's processing speed, so I have added a variable, doubleclickdelay, which can be set using the new Ctrl+Tab Hotkey.  Thanks to bloodhntr for the report and video.
-A related issue that I found while working on solving this bug is that Chitubox now allows supports to be stacked onto each other by default.  The best workaround I could find was to make the supports extremely thin so they do not collide.  I ended up making the middle diameter as well as the upper and lower diameter 0.2mm which worked well.

Known Issues
I encountered a weird issue where the script would sometimes click in random parts of the screen far from the intended location.  This was intermittent and I couldn't figure out a reliable cause.  I'll investigate further if I have time, but if anyone else is encountering this and believes they understand what's happening, please feel free to report an issue with the details.

