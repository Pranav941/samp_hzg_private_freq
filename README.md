## HZG-Freq

#Pre-requisites
MoonLoader (https://www.blast.hk/threads/13305/)
text-editor
An account at a text hosting site, Pastebin in this case

#Installation

Move the following files to 'Moonloader'
-dyna-freq.lua
-'lib' folder from the archive

#Usage
-Make a pastebin link and share it with the people you want on your freq
-Copy its "RAW" format link
  - Can also be done by adding RAW to the link
    - Example : https://pastebin.com/aBdF234 > https://pastebin.com/RAW/aBdF234
-open the dyna-freq.lua > Goto Line 16
  - Paste the link inside the quotes
    - Example : local freq = https.request("REPLACE-ME-WITH-A-LINK") > local freq = https.request("https://pastebin.com/aBdF234")

You are all set, Hop in-game and press the default key "Z" to update the freq
Enjoy :)
