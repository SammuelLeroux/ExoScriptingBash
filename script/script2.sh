clear
echo -e "\e[1;34mMenu:\e[0m"
#echo "MENU:"
echo "1. Verify user exists"
echo "2. Check UID"
echo "q. Exit"
read -p "Choose an option : " option

function chooseOption {
  case  $option in
    1)
      user=$(id -un)
      if id "$user" &>/dev/null; then
        echo "L'utilisateur $user existe"
      else
        echo "L'utilisateur $user n'existe pas."
      fi
      ;;
    2)
      uid=$(id -u)
      echo "Votre UID est : $uid"
      ;;
    q)
      exit 1
      ;;
    *)
      echo "Invalid option. Please try again."
      ;;
  esac
}

chooseOption $option
