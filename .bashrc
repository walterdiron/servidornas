# Configuraciones de entorno
export PATH="$HOME/.baulera/mis-scripts:$PATH"
export HISTSIZE=1000
export HISTFILESIZE=2000
export LANG=es_AR.UTF-8
export LC_ALL=es_AR.UTF-8

#Actualizacion
function actualizar {
  sudo apt-get update
  sudo apt-get upgrade -y
  sudo apt dist-upgrade -y
  sudo apt autoremove -y
  sudo clear
}

# Comandos personalizados
function bienvenida {
  echo "Bienvenido al servidor $HOSTNAME"
}

# Configuraciones de seguridad
function restringido {
  echo "Este comando está restringido en el servidor."
  return 1
}
#alias rm='restringido'
#alias mv='restringido'
#alias cp='restringido'

# Prompt
PS1='[\[\033[1;32m\]\u\[\033[0m\]@\[\033[1;34m\]\h\[\033[0m\]] \[\033[1;35m\]\W\[\033[0m\]\$ '

#Mis alias personalizados
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Historial de comandos
PROMPT_COMMAND='history -a'

#Correcion ortografica:
shopt -s cdspell

# Ejecutar funciones al iniciar sesión
#actualizar
bienvenida