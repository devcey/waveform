# waveform

Waveform is a simple program I've written to generate me some wallpapers. All it does is ask for a(n audio) file to input, generate a waveform image using ffmpeg and put a specified title/artist and description onto the wallpaper. As the user clicks on "generate!", the image will be displayed and saved in wallpapers/ under the name {title}_wall.png.

I've not tested the Windows build as I am running a Linux system. Should there be issues, please report them at the issues tab!

Dependencies:
- ffmpeg
- python3

Example for a wallpaper:
![example of such a generated wallpaper](https://raw.githubusercontent.com/devcey/waveform/refs/heads/main/wallpapers/sample_wall.png?token=GHSAT0AAAAAACX3J34SZIYEDP2SUBD36F7IZZGEWJA)

(And please, don't ask why I used a game engine (Godot) for this. It sounded way simpler to do for me, and it might have actually been. I'm still kind of a newbie, ok)
