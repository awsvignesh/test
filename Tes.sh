HOST=$(hostname)
USER=$(whoami)

if [ "$HOST" = "vImazmpsmsepiga.fisdev.local" ]; then
    sed -i 's/JenkinsPDB/MPSDEV3PDB/g' "${CFG_FILE}"
    case $USER in
      "mas2"|"mas3") sed -i "s/auto/${USER:2:1}/g" "${CFG_FILE}" ;;
    esac
elif [ "$HOST" = "vImazmpsappdevi.fisdev.local" ]; then
    case $USER in
      "clear2"|"switcha"|"mas2") sed -i 's/auto/a/g' "${CFG_FILE}" ;;
      "clear3"|"switch3"|"mas3") sed -i 's/auto/b/g' "${CFG_FILE}" ;;
    esac
fi
