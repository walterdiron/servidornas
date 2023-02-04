# Configuraciones de entorno
export PATH=$PATH:/usr/local/bin:/usr/sbin
export HISTSIZE=1000
export HISTFILESIZE=2000
export LANG=es_AR.UTF-8
export LC_ALL=es_AR.UTF-8

# Configuraciones de la terminal
alias ll='ls -lh'
alias la='ls -la'
alias l='ls -CF'
PS1='[\[\033[1;32m\]\u\[\033[0m\]@\[\033[1;34m\]\h\[\033[0m\]] \[\033[1;35m\]\W\[\033[0m\]\$ '

# Comandos personalizados
function greeting {
  echo "Bienvenido al servidor TecnoWall."
}

function update {
  sudo apt-get update
  sudo apt-get upgrade
  sudo apt dist-upgrade -y
}

function disk_space {
  df -h
}

# Configuraciones de seguridad
function restricted {
  echo "Este comando está restringido en el servidor NAS."
  return 1
}
#alias rm='restricted'
#alias mv='restricted'
#alias cp='restricted'

# Historial de comandos
PROMPT_COMMAND='history -a'

#Correcion ortografica:
shopt -s cdspell

# Ejecutar comandos al iniciar sesión
greeting
update
#disk_space