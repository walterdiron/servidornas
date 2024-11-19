# Configuraciones de entorno
export PATH="/home/walli/.baulera/mis-scripts:$PATH"
export HISTSIZE=1000
export HISTFILESIZE=2000
export LANG=es_AR.UTF-8
export LC_ALL=es_AR.UTF-8


# Comandos personalizados
function bienvenida {
  echo
  echo "Bienvenido $USER"
}

# Prompt
PS1='\[\e[0;32m\]\w\[\e[0m\] \[\e[0;97m\]\$\[\e[0m\] '

#Mis alias personalizados
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Historial de comandos
PROMPT_COMMAND='history -a'

#Correcion ortografica:
shopt -s cdspell

# Ejecutar funciones al iniciar sesión
bienvenida
