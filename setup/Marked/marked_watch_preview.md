Basic movement
h j k l - left; down; up; right
b w - word back/forward
e - end of word

Viewport movement (i.e. without moving the cursor position)
^e ^y - scroll line up / down
^u ^d - scroll page up/ page down
^b ^f - ditto

zt zz zb - scroll window so current line is at top/middle/bottom

H M L - cursor to high / medium / low part of page

gg G - top bottom of file

y - yank (then follow by movement or selection command)
yy - yank a whole line
c - cut (then follow by movement or selection command)
cc - cut a whole line
p P - paste after / before

cc or S - change current line
c - change (then follow by movement or selection command)
~ switch case and advance cursor

## Visual mode selecting
- accessible only from normal mode (not from insert mode)
V - enter visual line mode
v - enter visual mode
o - swap position of cursor to opposite end of selection

* # - find word under cursor forward, back
% - find matching bracket if on bracket, else go to opening bracket, then toggle to closing @good see http://ow.ly/ymM2y @good see http://ow.ly/ymM2y

; , - find next matching character forward, back

## Macros
qq - start recording a macro
q - stop recording
@q - play back last macro
5@q - to play back macro 5 times

# Log

## Entering and exiting normal mode 

Seems best to remap this. Turns out that escape was only ever used because the escape key way in the position of the tab key on the keyboard in which this was developed.
Currently mapped to option-v
Will do the same in sublime text so I get used to it
Ideally should do the same in the terminal too

### 140721 update

now mapped to `jj` in sublime text
struggling to work out how to do the same for ubiquitous vim 

Found [this](http://stevelosh.com/blog/2012/10/a-modern-space-cadet/#modern-software) post from Steve Losh



### 140727 update

- remapped Ubiquitous Vim to double jj outside of sublime text
- ugly because it involves deleting two key presses
- similar technique used in sublime text

### 140729 going to try mapping single tap caps lock to escape in iTerm






