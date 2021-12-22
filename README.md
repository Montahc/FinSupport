# FinSupport

FinSupport is a utility for dice makers who create 3d printed masters.  It automates a tedious task, namely the creation of fin style supports along the edges of the dice as seen here: https://youtu.be/cG1zigTs0-k?t=172

How to Use:
Either install AutoHotkey, or use the premade executable file.  Run either version of the script, and open the Chitubox window with your model in it. (This was designed for Chitubox, but might work in other slicers)

The program has three commands:
Ctrl+1 : Set Point A (usually the downward facing point of the model)
Ctrl+2 : Set Point B (Usually one of the outward points of the model)
Ctrl+3 : Click between point A and B at regular intervals.

Tips:
1. This works based on the position of the die in your screen.  Every time you reposition your view, you need to reset both points.
2. Do not hold ctrl down while running Ctrl+3.  Press the command and then release the keys, otherwise Chitubox will go into drag selection mode.

If you need more or less supports, you can change that number by pressing Ctrl+` and entering a new number at the prompt (default is 40)
