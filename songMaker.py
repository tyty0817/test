import moviepy as mv
import os
import math
from pytubefix import YouTube
from pytubefix.cli import on_progress

url = "https://www.youtube.com/watch?v=WjG4rekjn7U"
ffmpeg = "C:\\Users\\bigdo\\OneDrive\\Documents\\Desktop\\ffmpeg\\bin\\ffmpeg.exe"
PATH = "lua\\songs"
name = "Personality"
link = PATH + "\\" + name + ".mp4"
start = "00:00:00"
end = "00:02:00"

yt = YouTube(url, on_progress_callback = on_progress)
print(yt.title)

ys = yt.streams.get_lowest_resolution()
ys.download(output_path=PATH, filename='Personality.mp4')



clip = mv.VideoFileClip(link)
size = math.ceil(clip.duration / 120)

f = open(PATH + '\\' + name + ".lua", 'w')

i = 1
while(i <= size):
    end = "00:" + f"{(i * 2):02}" + ":00"
    os.system(ffmpeg + ' -ss ' + start + ' -t ' + end + ' -i ' + link + ' -ac 1 -c:a dfpwm ' + PATH + '\\' + name + str(i) +'.dfpwm -ar 48k -ac 1')
    start = end
    f.write("shell.run(\"rom/programs/http/wget\", \"https://github.com/tyty0817/test/raw/main/" + name + str(i) + ".dfpwm\")" + '\n'
        "shell.run(\"rom/programs/fun/speaker\", \"play\", \"" + name + str(i) + ".dfpwm\")" + "\n"
        "shell.run(\"rom/programs/delete\", \"" + name + str(i) + ".dfpwm\")" + "\n")
    i+=1

print("wget https://github.com/tyty0817/test/raw/refs/heads/main/lua/" + name + ".lua")
os.remove(link)