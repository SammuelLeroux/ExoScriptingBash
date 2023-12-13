path=$1
echo $path
if [ "$path"  = "/tmp/epitech.txt" ]; then
  if [ -e "$path" ]; then
    nb_lignes=$(wc -l < "$path")
    if [ "$nb_lignes" == 1 ]; then
      echo "There is 1 line in the file."
    else
      echo "There are $nb_lignes lines in the file."
    fi

    nb_occur_epitech=$(grep -o -w "epitech" "$path" | wc -l)
    if [ "$nb_occur_epitech" == 1 ]; then
      echo "The word epitech appears 1 time."
    else
      echo "The word epitech appears $nb_occur_epitech times."
    fi

    if [ "$nb_occur_epitech" > 0  ]; then
      path2="/tmp/epitech2.txt"
      if [ ! -e "$path2" ]; then
        touch "/tmp/epitech2.txt"
      fi

      lignes_epitech=$(grep "epitech" "$path")
      echo -e "$lignes_epitech"
      echo "$lignes_epitech" > "$path2"
    fi
  fi
fi
