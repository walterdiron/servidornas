# Configuraciones de entorno
export PATH="$HOME/.baulera/mis-scripts:$PATH"
export HISTSIZE=1000
export HISTFILESIZE=2000
export LANG=es_AR.UTF-8
export LC_ALL=es_AR.UTF-8

#Mensaje de Comando no reconocido
command_not_found_handle() {
    local command=$1
    local red=$(tput setaf 1)
    local yellow=$(tput setaf 3)
    local reset=$(tput sgr0)
    
    if ! command -v "$command" &> /dev/null; then
        echo
        echo "El comando ${red}'${command}'${reset}: ${yellow}No se reconoce${reset}" >&2
        echo
        read -p "¿Deseas instalarlo? (s/n): " install_option
        if [ "$install_option" = "s" ]; then
            sudo apt install $command -y
        fi
    else
        echo "El comando ${red}'${command}'${reset}: ${yellow}No se reconoce${reset}" >&2
    fi
}


# Comandos personalizados
function bienvenida {
  echo
  echo "Bienvenido al servidor $HOSTNAME"
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
