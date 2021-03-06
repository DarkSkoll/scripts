#!/bin/sh

bookmarks="
DuckDuckGo      https://start.duckduckgo.com/
Facebook        https://www.facebook.com/
Google Dev      https://console.developers.google.com/home/dashboard?project=searcher-301719
Suckless        https://suckless.org/
Dotshareit      http://dotshare.it/
Reddit          https://old.reddit.com/hot/
r/Unixporn      https://old.reddit.com/r/unixporn
r/Suckless      https://old.reddit.com/r/suckless
WhatsApp        https://web.whatsapp.com/
Gmail           https://mail.google.com/mail/u/0/#inbox
Youtube         https://www.youtube.com/feed/subscriptions
AwesomeFont     https://fontawesome.com/cheatsheet
Drive           https://drive.google.com/drive/my-drive
Github          https://github.com/
BlackBoard      https://buap.blackboard.com/
Moodle          https://econtinua.cs.buap.mx/moodle/
C Books         https://www.ubuntupit.com/best-c-programming-books-available/
ArchWiki        https://wiki.archlinux.org/
XCB Tutorial    https://www.x.org/releases/current/doc/libxcb/tutorial/index.html
XLib Tutorial   https://tronche.com/gui/x/xlib/introduction/
Regex           https://regex101.com/
"
echo "$bookmarks" | grep -P "^$(echo "$bookmarks" | grep "https:" | sed -E "s/\s{2,}.*//g" | dmenu -i -p "Bookmarks" -l 20 | awk '{print $1}')\s" | sed -E "s/.*\s{2,}//g" | xargs -r $BROWSER
