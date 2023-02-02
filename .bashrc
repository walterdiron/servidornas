# Configuraciones de entorno
export PATH=$PATH:/usr/local/bin:/usr/sbin: $HOME/.baulera/mis-script
export HISTSIZE=1000
export HISTFILESIZE=2000
export LANG=es_AR.UTF-8
export LC_ALL=es_AR.UTF-8

# Prompt
PS1='[\[\033[1;32m\]\u\[\033[0m\]@\[\033[1;34m\]\h\[\033[0m\]] \[\033[1;35m\]\W\[\033[0m\]\$ '

#Mis alias ppersonalizados
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Comandos personalizados
function bienvenida {
  echo "Bienvenido al servidor $HOSTNAME"
}

function actualizar {
  sudo apt-get update
  sudo apt-get upgrade
}

# Configuraciones de seguridad
function restringido {
  echo "Este comando está restringido en el servidor NAS."
  return 1
}
#alias rm='restringido'
#alias mv='restringido'
#alias cp='restringido'

# Historial de comandos
PROMPT_COMMAND='history -a'

#Correcion ortografica:
shopt -s cdspell

# Ejecutar comandos al iniciar sesión
bienvenida
actualizar