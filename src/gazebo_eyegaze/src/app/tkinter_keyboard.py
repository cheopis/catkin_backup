from tkinter import *
import tkinter

Keyboard_App = tkinter.Tk()

buttons = [
    " Prev ", " Next ", " Select ", " Quit "
]
curBut = [-1,-1]
buttonL = [[]]
entry = Text(Keyboard_App, width=100, height=10)
entry.grid(row=0, columnspan=5)

rows = 3
columns = 2

varRow = 1
varColumn = 0

def leftKey(event):
    # Iniciate program
    if curBut == [-1,-1]:
        curBut[:] = [0,0]
        buttonL[0][0].configure(highlightbackground='red')

    elif curBut[0] == 0:
        buttonL[curBut[0]][curBut[1]].configure(highlightbackground='#d9d9d9')
        curBut[:] = [0,0]
        buttonL[0][0].configure(highlightbackground='red')
    else:
        pass

def rightKey(event):
    print(curBut)
    if curBut == [-1,-1]:
        curBut[:] = [0,0]
        buttonL[0][0].configure(highlightbackground='red')
    elif curBut[0] == 0:
        buttonL[curBut[0]][curBut[1]].configure(highlightbackground='#d9d9d9')
        curBut[:] = [0,1]
        buttonL[0][1].configure(highlightbackground='red')
    else:
        pass
def upKey(event):
    if curBut == [-1,-1]:
        curBut[:] = [0,0]
        buttonL[0][0].configure(highlightbackground='red')
    elif curBut[0] == 0:
        pass
    else:
        buttonL[curBut[0]][curBut[1]].configure(highlightbackground='#d9d9d9')
        curBut[:] = [(curBut[0]-1), 0]
        buttonL[curBut[0]][curBut[1]].configure(highlightbackground='red')

def downKey(event):
    print(curBut)
    if curBut == [-1,-1]:
        curBut[:] = [0,0]
        buttonL[0][0].configure(highlightbackground='red')
    elif curBut[0] == rows-1:
        pass
    else:
        buttonL[curBut[0]][curBut[1]].configure(highlightbackground='#d9d9d9')
        curBut[:] = [(curBut[0]+1), 0]
        buttonL[curBut[0]][curBut[1]].configure(highlightbackground='red')

def select(value, x, y):
    if curBut != [-1,-1]:
        buttonL[curBut[0]][curBut[1]].configure(highlightbackground='#d9d9d9')
    curBut[:] = [x,y]
    buttonL[x][y].configure(highlightbackground='red')
    if value == "<-":
        input = entry.get("1.0", 'end-2c')
        entry.delete("1.0", END)
        entry.insert("1.0", input, END)

    elif value == " Space ":
        entry.insert(tkinter.END, ' ')

    elif value == "Tab":
        entry.insert(tkinter.END, '   ')

    else:
        entry.insert(tkinter.END, value)

#for button in buttons:

but = tkinter.Button(Keyboard_App, text=" Prev ", width=25, bg="#000000", fg="#ffffff", highlightthickness=4, 
                activebackground="#ffffff", activeforeground="#000000", relief="raised", padx=12,
                pady=4, bd=4, command=lambda x=" Prev ", i=0, j=0: select(x, i, j))
buttonL[0].append(but)
but.grid(row=0, column=0)

but = tkinter.Button(Keyboard_App, text=" Next ", width=25, bg="#000000", fg="#ffffff", highlightthickness=4, 
                activebackground="#ffffff", activeforeground="#000000", relief="raised", padx=12,
                pady=4, bd=4, command=lambda x=" Next ", i=0, j=1: select(x, i, j))
buttonL[0].append(but)
but.grid(row=0, column=1)
buttonL.append([])

but = tkinter.Button(Keyboard_App, text=" Select ", width=60, bg="#000000", fg="#ffffff", highlightthickness=4, 
                activebackground="#ffffff", activeforeground="#000000", relief="raised", padx=4,
                pady=4, bd=4, command=lambda x=" Select ", i=1, j=0: select(x, i, j))
buttonL[1].append(but)
but.grid(row=1, column = 0, columnspan=2, sticky = tkinter.W+tkinter.E)
buttonL.append([])

but = tkinter.Button(Keyboard_App, text=" Quit ", width=60, bg="#000000", fg="#ffffff", highlightthickness=4, 
                activebackground="#ffffff", activeforeground="#000000", relief="raised", padx=4,
                pady=4, bd=4, command=lambda x=" Quit ", i=2, j=0: select(x, i, j))
buttonL[2].append(but)
but.grid(row=2, column = 0, columnspan=2, sticky = tkinter.W+tkinter.E)
buttonL.append([])


def invoke_button(event):
    buttonL[curBut[0]][curBut[1]].invoke()

L = '<Left>'
R = '<Right>'
U = '<Up>'
D = '<Down>'
S = "<space>"

Keyboard_App.bind(L, leftKey)
Keyboard_App.bind(R, rightKey)
Keyboard_App.bind(U, upKey)
Keyboard_App.bind(D, downKey)
Keyboard_App.bind(S, invoke_button)
Keyboard_App.mainloop()