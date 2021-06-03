"""
CPP GUI Compiler

DO NOT DISTRIBUTE WITHOUT PERMISSION
"""

import os
import pathlib
import subprocess
import time

import tkinter
from tkinter import scrolledtext
from tkinter import filedialog
from tkinter import messagebox

# Setup main window
root = tkinter.Tk()
root.geometry("500x300")
root.title("Graphic C++ compiler v1.0.0")

# Define functions

def append_logs(text):
    global logs_logs
    logs_logs.configure(state="normal")
    logs_logs.insert("end","\n{} >> {}".format(
            time.ctime(time.time()),
            text
        )
    )
    logs_logs.configure(state="disabled")

def do_search():
    global entry_filepath
    filepath = filedialog.askopenfilename()
    entry_filepath.delete(0, "end")
    entry_filepath.insert("end", filepath)

def do_compile():
    global entry_filepath
    filepath = entry_filepath.get()
    filename = pathlib.Path(filepath).parts[-1]
    if os.path.exists(filepath):
        command = subprocess.Popen(
            ["g++",filepath,"-o",filename],
            stdout = subprocess.PIPE
        )
        status = command.communicate()[0]
        append_logs(status)
    else:
        messagebox.showerror(
            "Error:",
            "File not found."
        )
        append_logs("File not found.")

def do_reset():
    global entry_filepath
    global logs_logs
    entry_filepath.delete(0, "end")
    logs_logs.delete(0, "end")
    messagebox.showinfo(
        "Info",
        "Fields emptied and data reset."
    )

# Setup grid

label_filepath = tkinter.Label(
    root,
    text = "File path:"
)
label_filepath.grid(
    row = 1,
    column = 1,
    padx = 10,
    pady = 10
)

entry_filepath = tkinter.Entry(
    root,
    bd = 5,
    width = 180
)
entry_filepath.grid(
    row = 2,
    column = 1,
    padx = 10,
    pady = 10
)

button_filedialog = tkinter.Button(
    root,
    text = "Select file.",
    command = do_search,
    padx = 10,
    pady = 10
)
button_filedialog.grid(
    row = 3,
    column = 1,
    padx = 10,
    pady = 10
)

button_compile = tkinter.Button(
    root,
    text = "Compile!",
    command = do_compile,
    padx = 10,
    pady = 10,
)
button_compile.grid(
    row = 4,
    column = 1,
    padx = 10,
    pady = 10
)

button_reset = tkinter.Button(
    root,
    text = "Reset all.",
    command = do_reset,
    padx = 10,
    pady = 10,
)
button_reset.grid(
    row = 5,
    column = 1,
    padx = 10,
    pady = 10
)

label_logging = tkinter.Label(
    root,
    text = "Logs"
)
label_logging.grid(
    row = 1,
    column = 2,
    padx = 10,
    pady = 10
)

logs_logs = scrolledtext.ScrolledText(
    root,
    width = 90,
    height = 250,
    state = "disabled"
)
logs_logs.grid(
    row = 2,
    column = 2,
    rowspan = 4,
    padx = 10,
    pady = 10
)

root.mainloop()
