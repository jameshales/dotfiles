# Prompt theme
prompt_fade_setup () {
  case `hostname` in
      "hex")
          local background='green'
          local foreground='white'
      ;;
      "pex")
          local background='yellow'
          local foreground='white'
      ;;
      "luggage")
          local background='magenta'
          local foreground='white'
      ;;
      "glooper")
          local background='blue'
          local foreground='white'
      ;;
      "axle")
          local background='cyan'
          local foreground='white'
      ;;
      *)
          local background='white'
          local foreground='black'
      ;;
  esac

  local -A schars
  autoload -Uz prompt_special_chars
  prompt_special_chars

  PS1="%F{$foreground}%K{$background}%B%n@%m%b%F{$background}%k$schars[333]$schars[262]$schars[261]$schars[260]%F{$foreground}%k%f %1~/> "
  PS2="%F{$background}%k$schars[333]$schars[262]$schars[261]$schars[260]%f%k>"

  prompt_opts=(cr subst percent)
}

prompt_fade_setup
