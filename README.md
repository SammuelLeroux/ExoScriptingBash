# README - Exercices de Scripting en Bash


## Objectif
Ce repository contient les solutions aux exercices de scripting en bash. Les détails des exercices se trouvent dans le fichier de consigne **NSA T-NSA-500_day08.pdf**.

## Structure du Repository
- **script/**
  - Contient les scripts de réponse en format `.sh`.
- **NSA T-NSA-500_day08.pdf**
  - Le fichier de consigne contenant les détails des exercices.

## Exécution des Scripts
Les scripts peuvent être exécutés individuellement ou tous à la suite en utilisant le script `script_master.sh`. Voici comment exécuter les scripts :

### Individuellement
```bash
./script2.sh
```

Remplacez 2 par le numéro du script que vous souhaitez exécuter.
En utilisant le script_master

```bash
./script_master.sh [arg1] [arg2] [arg3] [arg4]
```

Les trois premiers arguments [arg1], [arg2], [arg3] sont nécessaires pour le script 1. Le quatrième argument [arg4] est nécessaire pour le script 5.
Détails spécifiques aux scripts

    Script 1 :
        Nécessite 3 arguments en ligne de commande : 1 numéro, un opérateur (+, *, -, /), et un deuxième numéro.

    Script 5 :
        Nécessite soit aucun argument, soit "ACCEPTED" ou "FAILED" comme argument.

## Exemple d'utilisation

### Exécution individuelle :
```bash
./script2.sh
```

### Exécution avec le script_master :
```bash
    ./script_master.sh 5 + 7 /
```

Cela exécute le script 1 avec les arguments 5, +, 7 et le script 5 avec l'argument /.

N'oubliez pas de donner les droits d'exécution aux scripts si nécessaire : 
```bash
chmod +x script*.sh.
```

Bonne exploration des solutions de scripting en bash !
