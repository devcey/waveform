import sys
import os

print(sys.argv)
path = sys.argv[1]
print(path)

os.system(f'ffmpeg -y -i "{path}" -filter_complex \
"[0:a]aformat=channel_layouts=mono, \
 compand=gain=-6, \
 showwavespic=s=1096x362:colors=#e4e5e6[fg]; \
 color=s=1096x362:color=#17181c, \
 drawgrid=width=iw/10:height=ih/5:color=#17181c@0.1[bg]; \
 [bg][fg]overlay=format=auto,drawbox=x=(iw-w)/2:y=(ih-h)/2:w=iw:h=1:color=#e4e5e6" \
-frames:v 1 wave.png')
