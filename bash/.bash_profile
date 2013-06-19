# android
export ANDROID_SDK=/Developer/adt-bundle-mac-x86_64/sdk
export ANDROID_NDK=/Developer/adt-bundle-mac-x86_64/ndk
export ANDROID_HOME=$ANDROID_SDK
export SDK=$ANDROID_SDK
export NDK=$ANDROID_NDK
export PATH=~/bin:/usr/local/bin:$PATH:$ANDROID_SDK/tools:$ANDROID_SDK/platform-tools

# skia
export ANDROID_SDK_ROOT=$ANDROID_SDK
export TARGET_DEVICE=arm_v7

# cocos2d-x
export NDK_ROOT=$ANDROID_NDK

########
# mysql
# http://www.coolestguyplanettech.com/downtown/install-and-configure-apache-mysql-php-and-phpmyadmin-osx-108-mountain-lion
export PATH="/usr/local/mysql/bin:$PATH"

########
#
# game{closure} DevKit
#
export PATH=$PATH:/usr/local/share/npm/bin


########
# chromium
####
export PATH=$PATH:~/bin/depot_tools


########
# vcprompt를 이용해서 bash 프롬프트에 VCS 정보 표시하기
# http://blog.outsider.ne.kr/737
# https://github.com/djl/vcprompt
#export PS1='\u@\h:\w \$(vcprompt)\$'
c_cyan=`tput setaf 6`
c_dark=`tput setaf 0`
c_red=`tput setaf 1`
c_green=`tput setaf 2`
c_pink=`tput setaf 5`
c_blue=`tput setaf 4`
c_sgr0=`tput sgr0`
 
show_repository ()
{
  echo -e "$(VCPROMPT_FORMAT=($(tput setaf 3)%s$(tput sgr0):$(tput setaf 6)%h$(tput sgr0)@$(tput setaf 2)%b$(tput setaf 1)%m$(tput setaf 5)%u$(tput sgr0)) vcprompt)"
}
 
#export PS1='\[${c_cyan}\]\u\[${c_sgr0}\]@\[${c_blue}\]\h\[${c_sgr0}\]:\w\[${c_sgr0}\] $(show_repository)\n\$ '


#########
# aliases
#alias cd..="cd .."
#alias l="ls -al"
#alias lp="ls -p"
#alias h=history

# the "kp" alias ("que pasa"), in honor of tony p.
#alias kp="ps auxwww"

alias ss="/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background &"

# file:///Developer/SDKs/android-ndk-r6/docs/NDK-STACK.html
alias al="adb logcat bad:V *:E"
alias an="adb logcat bad:V *:E | $ANDROID_NDK/ndk-stack -sym $PROJECT_PATH/obj/local/armeabi"
alias adb-mobile-chrome="adb forward tcp:9222 localabstract:chrome_devtools_remote"

alias mc="LANG=en_US.UTF-8 mc"
alias grep="grep --color"
alias ssh="ssh -X"
alias md="mkdir -p"
alias rd="rmdir"
alias df="df -h"
alias mv="mv -i"
alias slink="ln -s"
alias sed='sed -E'
alias ls='ls -GF'
alias l='ls -GF1'
alias la='ls -GlhAF'
alias ll='ls -GlhF'
alias lt="ls -GlhtrF"
alias l.="ls -GlhtrdF .*"
alias dir="lt"
alias dot="l."
alias cd..="cd .."
alias cd...="cd ../.."
alias cd....="cd ../../.."
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias cd-src="cd /Volumes/SRC"
alias cd-project="cd ~/Documents/projects"

# Java tool 한글 깨짐
alias jar='java -Dfile.encoding=utf8 sun.tools.jar.Main '
alias keytool='java -Dfile.encoding=utf8 sun.security.tools.KeyTool '

# mount the android file image
function mountAndroid { hdiutil attach ~/android.dmg -mountpoint /Volumes/android; }
#

##
# ssh
##
#alias ssh-test1-web="ssh -p 8025 user1@10.255.255.200"

# sshfs 
function mount-web { sshfs user1@web: /Volumes/WEB1/ -p 8025; }

## Setting PATH for Python 2.7
## The orginal version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
#export PATH

# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}

#
#
#
api_key="AIzaSyAuh3i8oKxEFVqMZH0TtJVhzm7iCyZjv8I"

export DYLD_FALLBACK_LIBRARY_PATH=$DYLD_FALLBACK_LIBRARY_PATH:/usr/local/mysql/lib

