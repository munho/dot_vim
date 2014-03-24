# 
# android (brew)
# http://stackoverflow.com/questions/3987683/homebrew-install-specific-version-of-formula
#
export ANDROID_SDK=/usr/local/opt/android-sdk
export ANDROID_NDK=/usr/local/Cellar/android-ndk/r8e
export ANDROID_HOME=$ANDROID_SDK
export ANDROID_SDK_HOME=$ANDROID_SDK
export ANDROID_NDK_ROOT=$ANDROID_NDK
export SDK=$ANDROID_SDK
export NDK=$ANDROID_NDK
export PATH=~/bin:/usr/local/bin:$PATH:$ANDROID_SDK/tools:$ANDROID_SDK/platform-tools

# skia
export ANDROID_SDK_ROOT=$ANDROID_SDK
export TARGET_DEVICE=arm_v7
# vlc-android
export ANDROID_ABI=armeabi-v7a
export NO_FPU=1

# cocos2d-x
export NDK_ROOT=$ANDROID_NDK

#export NODE_PATH="/usr/local/lib/node_modules"

########
# mysql
# http://www.coolestguyplanettech.com/downtown/install-and-configure-apache-mysql-php-and-phpmyadmin-osx-108-mountain-lion
export PATH="/usr/local/mysql/bin:$PATH"
#export DYLD_FALLBACK_LIBRARY_PATH=$DYLD_FALLBACK_LIBRARY_PATH:/usr/local/mysql/lib

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
# http://www.orzota.com/single-node-hadoop-setup-2/
#
export JAVA_HOME=$(/usr/libexec/java_home)
export JAVA_OPTS=-Xmx1024M
export HADOOP_HOME=/usr/local/Cellar/hadoop/1.2.1
export HADOOP_LOG_DIR=$HADOOP_HOME/logs
export HADOOP_SLAVES=$HADOOP_HOME/conf/slaves
export PATH=$HADOOP_HOME/bin:$PATH
export HERITRIX_HOME=/trunk/bot/heritrix-3.1.1


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
alias cd-droid="cd /Volumes/DROID"
alias cd-project="cd ~/Documents/projects"

# Java tool 한글 깨짐
alias jar='java -Dfile.encoding=utf8 sun.tools.jar.Main '
alias keytool='java -Dfile.encoding=utf8 sun.security.tools.KeyTool '

# mount the android file image
#function mountAndroid { hdiutil attach ~/android.dmg -mountpoint /Volumes/android; }
function mountdroid { hdiutil attach "/Volumes/My\ Book/android.dmg.sparseimage" -mountpoint /Volumes/DROID; }
#

##
# ssh
##
#alias ssh-test1-web="ssh -p 8025 user1@10.255.255.200"

# sshfs 
function mount-web { sshfs user1@web: /Volumes/WEB1/ -p 8025; }

# mysql
# http://juristr.com/blog/2010/11/howto-mysql-workbench-to-remote-ubuntu/
function mysql_forward { ssh -L 3310:127.0.0.1:3306 munho@push; }


# http://superuser.com/questions/490425/how-do-i-switch-between-java-7-and-java-6-on-os-x-10-8-2
# http://nemecec.blogspot.kr/2012/04/os-x-switching-java-versions-easily.html
# usage:  setjdk 1.7
function setjdk() {
	if [ $# -eq 0 ]; then
		echo 'Usage: setjdk [VERSION]'
		echo '              1.6, 1.7'
		echo 'Example: setjdk 1.6'
		return
	fi
	if [ $# -ne 0 ]; then
		removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin'
		if [ -n "${JAVA_HOME+x}" ]; then
			removeFromPath $JAVA_HOME
		fi
		export JAVA_HOME=`/usr/libexec/java_home -v $@`
		export PATH=$JAVA_HOME/bin:$PATH
	fi  
	echo JAVA_HOME set to $JAVA_HOME
	java -version
}
function removeFromPath() {
	export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
}

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
api_key="AIzaSyAuh3i8oKxEFVqMZH0TtJVhzm7iCyZjv8I"


# added by Anaconda 1.6.1 installer
export PATH="/Users/munho/anaconda/bin:$PATH"

#
# See: https://github.com/Homebrew/homebrew/wiki/Homebrew-and-Python
#
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

# https://github.com/gcuisinier/jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
