# SHORTCUTS

alias deleteDSFiles='find . -name ".DS_Store" -type f -delete'

# Empty the Trash on all mounted volumes & the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

alias flushdns='sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder'

alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'

# NPM

alias npm-update="npx npm-check-updates --dep prod,dev --upgrade --target minor";
alias flush-npm="rm -rf node_modules package-lock.json && npm install";
