#!/usr/bin/env python2
import numpy as np
import cv2 as cv
#import eye_calibration.py
import subprocess

# get screen resolution
def get_screen_resolution():
    output = subprocess.Popen('xrandr | grep "\*" | cut -d" " -f4',shell=True, stdout=subprocess.PIPE).communicate()[0]
    resolution = output.split()[0].split(b'x')
    return {'width': resolution[0], 'height': resolution[1]}

# Create a black image
height = 512
width = 512

img = np.zeros((width,height,3), np.uint8)

# Create the circles for calibration
n_circles_axis_x = 3
n_circles_axis_y = 3

y_circles = abs(height/(n_circles_axis_y*2))
x_circles = abs(width/(n_circles_axis_x*2))

radius = 10
color = (255, 0, 0)
thickness = 3

for i in range(n_circles_axis_x):
    for j in range(n_circles_axis_y):
        cv.circle(img, ((2*i+1)*x_circles ,(2*j+1)*y_circles), radius, color, thickness)

if img is None:
    sys.exit("Could not read the image.")

# Exibit image at the center of screen
resolution = get_screen_resolution()
screensize = (int(resolution['width']) - width)/2, (int(resolution['height']) - height)/2

winname = "Calibration"
cv.namedWindow(winname) 
cv.moveWindow(winname, screensize[0],screensize[1]) 
cv.imshow(winname, img)

# Calibrar aqui (o(

k = cv.waitKey(0)
if k == ord("s"):
    cv.imwrite("starry_night.png", img)