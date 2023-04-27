import keyboard
import pyperclip
import re

def string_format(string_template):
    return string_template.replace('\n', '').replace('  ', ' ')

keyboard.add_hotkey('SNAPSHOT', lambda:keyboard.write(string_format(pyperclip.paste()), 0.01))
keyboard.wait('esc')
