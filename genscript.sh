#!/bin/bash
# genscript.sh version 1.0.0

################################### Sobre ###################################
# O genscript.sh é um programa simples que gera um Shell-Script com um modelo -
# padrão com informações passadas pelo usuário. 
# Escrito em 03/11/2021 por Hyago de Jesus.
# Este software é distribuido pela licença MIT e não dá nenhuma garantia.

################################# Parâmetros #################################
NOME="$1"   # Guardando o primeiro parâmetro dentro da variável "NOME"

################################### Checks ###################################
# Realizando teste para verificar se o arquivo já existe
if [ -f $NOME ]
then
    read -p "O arquivo já existe, gostaria de sobreescrever? [S\n]: " OPCAO
    
        case $OPCAO in 
            S | s)
                echo "Continuando..."
                ;;
            N | n)
                read -p "Escolha outro nome: " NOME
                ;;
            *)
                echo "Opção incorreta."
                
        esac

fi

################################### Funções ##################################
touch $NOME     # Criando o arquivo  

echo "#!/bin/bash
# $NOME version 1.0.0

################################### Sobre ###################################


################################# Parâmetros #################################

 
################################# Variáveis ##################################


################################### Checks ###################################


################################### Funções ##################################


#################################### Logs ####################################" > "$NOME"
