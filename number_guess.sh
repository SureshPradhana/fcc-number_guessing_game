#!/bin/bash
R=$((1+RANDOM % 1000))

echo "Enter your username:"
read USER
PSQL="psql --username=freecodecamp --dbname=users_data -tq --no-align -c"
USERFLAG=$($PSQL "SELECT username FROM users WHERE username='$USER'")

if [[ -z $USERFLAG ]]; then 
    RE=$($PSQL "INSERT INTO users(username) VAlUES ('$USER')")
    echo "Welcome, $USER! It looks like this is your first time here."
else
    GAMES_PLAYED=$($PSQL "SELECT games_played FROM users WHERE username='$USER'")
    BEST_GAME=$($PSQL "SELECT best_game FROM users WHERE username='$USER'")
    echo "Welcome back, $USERFLAG! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

echo "Guess the secret number between 1 and 1000:"
guess_count=0

while true;do
  read SECRET
   # Check if the guess is an integer
  if ! [[ "$SECRET" =~ ^[0-9]+$ ]]; then
        echo "That is not an integer, guess again:"
        continue
  fi
  ((guess_count++))
  if (($R == $SECRET));then
    if [[ -z $BEST_GAME || $guess_count -lt $BEST_GAME ]];then
      $PSQL "UPDATE users SET best_game = $guess_count WHERE username = '$USER'"
    fi
    $PSQL "UPDATE users SET games_played = games_played + 1 WHERE username = '$USER'"
    echo "You guessed it in $guess_count tries. The secret number was $SECRET. Nice job!"
    exit
  elif (($R > $SECRET));then
    echo "It's higher than that, guess again:"
  else
    echo "It's lower than that, guess again:"
  fi
done

