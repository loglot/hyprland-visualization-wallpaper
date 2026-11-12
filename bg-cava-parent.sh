check_process() {
  echo "$ts: checking $1"
  [ "$1" = "" ]  && return 0
  [ `pgrep -n $1` ] && return 1 || return 0
}

kitty --class=window-bg1 -o background_opacity=0.0  ~/bg/bg-cava-child1.sh &
kitty --class=window-bg2 -o background_opacity=0.0  ~/bg/bg-cava-child2.sh &
kitty --class=window-bg3 -o background_opacity=0.0 -o font_size=3.0  ~/bg/bg-cava-child3.sh &
kitty --class=window-bg4 -o background_opacity=0.0 -o font_size=3.0  ~/bg/bg-cava-child4.sh &

pgrep -n osc-bg
if [ $? == 1 ]; then 
	kitty --class=window-bg5 -o background_opacity=0.0 -o font_size=1.0  osc-bg &
fi
