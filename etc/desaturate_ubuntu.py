#!/usr/bin/env python
'''
Programatically desaturates all SVG, + PNG icons/wallpapers/themes and updates
cache.

Obviously mutates the entire system, so use at your own peril.

Run as sudo.
'''

from os import walk
from os.path import join
from re import findall
from colorsys import rgb_to_hsv,hsv_to_rgb
from subprocess import call

from PIL import Image,ImageEnhance

TARGET_DIRS = [
	'/usr/share/icons/',
#       '/usr/share/themes/',
	'/usr/share/pixmaps/',
	'/usr/share/app-install/',
	'/usr/share/backgrounds/',
]

vectors = list()
bitmaps = list()
themes = list()

for icon_dir in TARGET_DIRS:
	for root, dirs, files in walk(icon_dir):
		# check this is really a work directory
		for filename in files:
		    filepath = join(root,filename)

		    if filepath[-3:] in ('svg','css','ini','xbm','xml','xpm'):
			vectors.append(filepath)
		    elif filepath[-3:] in ('png','jpg'):
			bitmaps.append(filepath)
                    elif filename == 'index.theme':
                        themes.append(root)


for filepath in vectors:
    try:
        with open(filepath,'r') as f:
            contents = f.read()
    except IOError:
        continue

    print filepath

    olds = findall(r'#[0-9a-fA-F]{6}',contents)
    olds = set(olds)

    for old in olds:
        r,g,b = findall(r'..',old[1:])

        # convert to RGB decimal float 0-1
        r = int(r,16)/255.0
        g = int(g,16)/255.0
        b = int(b,16)/255.0

        # hsv
        h,s,v = rgb_to_hsv(r,g,b)

        # no more saturation!
        s = 0.0

        # ...back to RGB
        r,g,b = hsv_to_rgb(h,s,v)

        # ...hex, 255
        r = format(int(r*255), '02X')
        g = format(int(g*255), '02X')
        b = format(int(b*255), '02X')

        new = '#'+r+g+b

        # mutate (eww)
        contents = contents.replace(old,new)

    # update!
    with open(filepath,'w') as f:
        f.write(contents)


for filepath in bitmaps:
    try:
        im = Image.open(filepath)
    except IOError:
        continue

    print filepath

    converter = ImageEnhance.Color(im)
    newim = converter.enhance(0.0)
    newim.save(filepath)

# update caches
for theme in themes:
    call(['gtk-update-icon-cache',theme])
