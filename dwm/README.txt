# Patches included:

  alpha (for transparency)
  attachaside (new clients appear in the stack rather than as the master)
  cyclelayouts (cycles through the available layouts)
  gridmode (adding a grid layout)
  restartsig (allows dwm to be restarted with a keybinding)
  rotatestack (moves a window through the stack, in either direction)
  statuspadding (horizontal and vertical padding in the status bar are now configurable options)
  uselessgap (adding gaps when more than one window)

# Dependencies:

  libxft
  ttf-hack
  ttf-joypixels
  st
  dmenu
  tabbed
  nerd-fonts-complete (optional)
  https://aur.archlinux.org/packages/libxft-bgra/ (needed for colored fonts and emojis)

  Also, if you are building this on an Ubuntu-based system, you need to install libx11-dev and xorg-dev.

# Installing dwm

  Download the source code from this repository or use a git clone:
  git clone https://github.com/agarces5/arch-install/dwm.git
  cd dwm
  sudo make clean install
  If you do not use a login manager (such as lightdm) then you can add the following line to your .xinitrc to start dwm using startx:
  exec dwm
  If you use a login manager (like lightdm), make sure that you have a file called dwm.desktop in your usr/share/xsessions directory.  It should look something like this:
  [Desktop Entry]
  Encoding=UTF-8
  Name=Dwm
  Comment=Dynamic window manager
  Exec=dwm
  Icon=dwm
  Type=XSession
  
  My Keybindings
  The MODKEY is set to the Super key (Windows key).
    
  Main keybindings
    
  MODKEY + RETURN
  opens terminal (alacritty)
    
  MODKEY + SHIFT + RETURN
  opens run launcher (dmenu)
    
  MODKEY + SHIFT + c
  closes window with focus
    
  MODKEY + SHIFT + r
  restarts dwm
    
  MODKEY + SHIFT + q
  quits dwm
    
  MODKEY + b
  hides the bar
    
  MODKEY + 1-9
  switch focus to workspace (1-9)
    
  MODKEY + SHIFT + 1-9
  send focused window to workspace (1-9)
    
  MODKEY + j
  focus stack +1 (switches focus between windows in the stack)
    
  MODKEY + k
  focus stack -1 (switches focus between windows in the stack)
    
  MODKEY + SHIFT + j
  rotate stack +1 (rotates the windows in the stack)
    
  MODKEY + SHIFT + k
  rotate stack -1 (rotates the windows in the stack)
    
  MODKEY + h
  setmfact -0.05 (expands size of window)
    
  MODKEY + l
  setmfact +0.05 (shrinks size of window)
    
  MODKEY + .
  focusmon +1 (switches focus next monitors)
    
  MODKEY + ,
  focusmon -1 (switches focus to prev monitors)
  
  Layout controls
    
  MODKEY + d
  row layout
    
  MODKEY + i
  column layout
    
  MODKEY + TAB
  cycle layout (-1)
    
  MODKEY + SHIFT + TAB
  cycle layout (+1)
    
  MODKEY + SPACE
  change layout
    
  MODKEY + SHIFT + SPACE
  toggle floating windows
    
  MODKEY + t
  layout 1
    
  MODKEY + f
  layout 2
    
  MODKEY + m
  layout 3
    
  MODKEY + g
  layout 4
  
  Application controls
    
  MODKEY + ALT + b
  open Firefox browser

  MODKEY + ALT + m
  open [mailspring](https://github.com/Foundry376/Mailspring)
    
  MODKEY + ALT + f
  open [pcmanfm (PaCMANFileManager)](https://wiki.archlinux.org/title/PCManFM)
