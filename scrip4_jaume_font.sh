#!/bin/bash
function usage(){

    echo "INSTRUCCIONS: ./scrip4_jaume_fomt USER_NAME [USER_NAME ... ]"
    exit 1
}
echo "${0}"
if [ ${UID} -ne 0 ] 
then 
    usage
fi
echo "direcori: $(dirname ${0}) fitxer: $(basename ${0})"
NUMERO_PARAMETRES=${#}
echo "NUMERO DE PARAMETRES: ${NUMERO_PARAMETRES}"
if [[ ${NUMERO_PARAMETRES} -eq 0 ]]
then
    usage
fi
for USER_NAME in ${@}
do
    PASSWORD=$(date +%s%N | sha256sum | head -c10)
    echo "${USER_NAME}:${PASSWORD}"
    useradd -m ${USER_NAME} &> /dev/null
    if [[ ${?} -ne 0 ]]
    then   
        echo "Error al crear usuario"
        exit 1
    fi
echo "${USER_NAME}:${PASSWORD}" | chpasswd
done

