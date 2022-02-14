#!/usr/bin/env python2

#app libraries
from tkinter import *
from tkinter.ttk import *
from Tkinter import Tk, Canvas, Frame, Button, Label
from Tkinter import BOTH, W, NW, TOP, FLAT
from PIL import Image, ImageTk
import os
import os.path
import json
from threading import Thread

class Application(Frame):
    def __init__(self, master = None):
        Frame.__init__(self)
        self.parent = master
        self.initUI()
        
    def initUI(self):
        self.parent.title("Layout Test")
        self.config(bg = '#F0F0F0')
        self.pack(fill = BOTH, expand = 1)

        #Generate images
        self.getImages()
        self.canvas = Label(self, relief = FLAT, background = "#D2D2D2", width = 600, 
                             height = 500, image = self.items["img"][self.index])
        self.canvas.pack(side = TOP, anchor = NW, padx = 200, pady = 100)

        #add gazebo camera image
        #### FAZER ISSO AQUI QUANDO TUDO DER BOM (O( ####
        
        #create buttons
        self.createWidgets()

    def getImages(self):
        f = r'/home/ariele/catkin_ws/src/gazebo_eyegaze/images'
        self.items = {"name":[],
                      "img": []}
        for file in os.listdir(f):
            f_img = f+"/"+file
            self.items["name"].append(file[0:-4])
            img = Image.open(f_img)
            img = img.resize((500, 400))
            self.items["img"].append(ImageTk.PhotoImage(img))
        
        self.index = 0

    # eyegaze mouse functions
    def leftClick(self, event):
        self.next.configure(bg = '#F0F0F0')
        self.prev.configure(bg = "#33B5E5")
        self.prev.invoke()
	
    def rightClick(self, event):
        self.next.configure(bg = "#33B5E5")
        self.prev.configure(bg = '#F0F0F0')
        self.next.invoke()

    # select the item and send the information to robot
    def selectItem(self):
        with open('data.json', 'r') as f:
            yolo = json.load(f)
        if self.items["name"][self.index] in yolo["names"]:
            print('Selected: ' + self.items["name"][self.index])
        else:
            print('no item found')
        # DO STUFF

    def prevItem(self):
        self.index -= 1
        if self.index < 0:
            self.index = len(self.items["img"]) - 1
        self.canvas.configure(image = self.items["img"][self.index])

    def nextItem(self):
        self.index += 1
        if self.index >= len(self.items["img"]):
            self.index = 0
        self.canvas.configure(image = self.items["img"][self.index])

    # creating the buttons
    def createWidgets(self):
        self.QUIT = Button(self, text = "Quit", command = self.quit)
        self.QUIT.configure(width = 10, activebackground = "#33B5E5", anchor=N, relief = FLAT)
        #button_window = self.canvas.create_window(10, 10, anchor=NW, window=self.QUIT)
        self.QUIT.place(x=10, y=100)

        self.prev = Button(self, text = "< Previous", command = self.prevItem)
        self.prev.configure(width = 10, activebackground = "#33B5E5", anchor=NW, relief = FLAT)
        #button_window = self.canvas.create_window(10, 10, anchor=NW, window=self.QUIT)
        self.prev.place(x=10, y=10)

        self.next = Button(self, text = "Next >", command = self.nextItem)
        self.next.configure(width = 10, activebackground = "#33B5E5", anchor=NE, relief = FLAT)
        #button_window = self.canvas.create_window(10, 10, anchor=NW, window=self.QUIT)
        self.next.place(x=150, y=10)
        
        self.select = Button(self, text = "Select Item", command = self.selectItem)
        self.select.configure(width = 10, activebackground = "#33B5E5", anchor=W, relief = FLAT)
        #button_window = self.canvas.create_window(0, 0, anchor=NW, window=self.hi_there)
        self.select.place(x=10, y=50)

def startApp():
    root = Tk()
    root.geometry('800x600+10+50')
    root.overrideredirect(True)
    app = Application(root)

    # This will bind eyegaze events to the tkinter
    # toplevel which will define the mouse clicks
    root.bind("<KeyPress-Left>", lambda e: app.leftClick(e))
    root.bind("<KeyPress-Right>", lambda e: app.rightClick(e))
    root.bind("<space>", lambda e: app.holdClick(e))

    app.mainloop() 

if __name__ == '__main__':
    startApp()
      
