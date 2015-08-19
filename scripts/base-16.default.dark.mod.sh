#!/bin/sh
# Base16 Default - Console color setup script
# Chris Kempson (http://chriskempson.com)

color00="22/22/22" # Base 00 - Black
color01="CD/54/6C" # Base 08 - Red
color02="A5/AF/86" # Base 0B - Green
color03="CD/78/60" # Base 0A - Yellow
color04="6A/93/88" # Base 0D - Blue
color05="75/43/4C" # Base 0E - Magenta
color06="76/7D/75" # Base 0C - Cyan
color07="99/99/99" # Base 05 - White
color08="4A/58/5A" # Base 03 - Bright Black
color09="EF/54/5F" # Base 08 - Bright Red
color10="BD/C7/9E" # Base 0B - Bright Green
color11="E8/87/73" # Base 0A - Bright Yellow
color12="94/B1/A3" # Base 0D - Bright Blue
color13="BB/6C/73" # Base 0E - Bright Magenta
color14="9D/A6/9E" # Base 0C - Bright Cyan
color15="D6/C0/8F" # Base 07 - Bright White
color16="d2/84/45" # Base 09
color17="8f/55/36" # Base 0F
color18="20/20/20" # Base 01
color19="30/30/30" # Base 02
color20="b0/b0/b0" # Base 04
color21="e0/e0/e0" # Base 06

# 16 color space
printf "\e]4;0;rgb:$color00\e\\"
printf "\e]4;1;rgb:$color01\e\\"
printf "\e]4;2;rgb:$color02\e\\"
printf "\e]4;3;rgb:$color03\e\\"
printf "\e]4;4;rgb:$color04\e\\"
printf "\e]4;5;rgb:$color05\e\\"
printf "\e]4;6;rgb:$color06\e\\"
printf "\e]4;7;rgb:$color07\e\\"
printf "\e]4;8;rgb:$color08\e\\"
printf "\e]4;9;rgb:$color09\e\\"
printf "\e]4;10;rgb:$color10\e\\"
printf "\e]4;11;rgb:$color11\e\\"
printf "\e]4;12;rgb:$color12\e\\"
printf "\e]4;13;rgb:$color13\e\\"
printf "\e]4;14;rgb:$color14\e\\"
printf "\e]4;15;rgb:$color15\e\\"


# 256 color space
if [ "$TERM" != linux ]; then
  printf "\e]4;16;rgb:$color16\e\\"
  printf "\e]4;17;rgb:$color17\e\\"
  printf "\e]4;18;rgb:$color18\e\\"
  printf "\e]4;19;rgb:$color19\e\\"
  printf "\e]4;20;rgb:$color20\e\\"
  printf "\e]4;21;rgb:$color21\e\\"
fi

# clean up
unset color00
unset color01
unset color02
unset color03
unset color04
unset color05
unset color06
unset color07
unset color08
unset color09
unset color10
unset color11
unset color12
unset color13
unset color14
unset color15
unset color16
unset color17
unset color18
unset color19
unset color20
unset color21
