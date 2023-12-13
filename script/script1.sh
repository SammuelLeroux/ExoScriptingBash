num1=$1
operator=$2
num2=$3

if [ $# -ne 3 ]; then
  echo "Il manque des parametres"
  exit 1
fi

result=0
case $operator in
  '+')
    result=$((num1 + num2))
    ;;
  '-')
    result=$((num1 - num2))
    ;;
  '*')
    result=$((num1 * num2))
    ;;
  '/')
    if [ "$num2" -eq 0 ]; then
      echo "Error : Division par 0 n'est pas permise"
      exit 1
    else
      result=$((num1 / num2))
    fi
    ;;
  *)
    echo "Operateur non reconnu."
    exit1
    ;;
esac

echo "Result: $result"
