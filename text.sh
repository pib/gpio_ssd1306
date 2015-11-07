#!/bin/sh
write_text () {
  for i in `seq 0 ${#1}`; do
    if [[ $i != 0 ]]; then
      write_data 0 0 0 0 0 0 0 0
    fi
    case "${1:$i:1}" in
    ' ')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      ;;
    '!')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      write_data 0 1 0 1 1 1 1 1
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      ;;
    '"')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 1 1 1
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 1 1 1
      write_data 0 0 0 0 0 0 0 0
      ;;
    '#')
      write_data 0 0 0 1 0 1 0 0
      write_data 0 1 1 1 1 1 1 1
      write_data 0 0 0 1 0 1 0 0
      write_data 0 1 1 1 1 1 1 1
      write_data 0 0 0 1 0 1 0 0
      ;;
    '$')
      write_data 0 0 1 0 0 1 0 0
      write_data 0 0 1 0 1 0 1 0
      write_data 0 1 1 1 1 1 1 1
      write_data 0 0 1 0 1 0 1 0
      write_data 0 0 0 1 0 0 1 0
      ;;
    '%')
      write_data 0 0 1 0 0 0 1 1
      write_data 0 0 0 1 0 0 1 1
      write_data 0 0 0 0 1 0 0 0
      write_data 0 1 1 0 0 1 0 0
      write_data 0 1 1 0 0 0 1 0
      ;;
    '&')
      write_data 0 0 1 1 0 1 1 0
      write_data 0 1 0 0 1 0 0 1
      write_data 0 1 0 1 0 1 0 1
      write_data 0 0 1 0 0 0 1 0
      write_data 0 1 0 1 0 0 0 0
      ;;
    "'")
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 1 0 1
      write_data 0 0 0 0 0 0 1 1
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      ;;
    '(')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 1 1 1 0 0
      write_data 0 0 1 0 0 0 1 0
      write_data 0 1 0 0 0 0 0 1
      write_data 0 0 0 0 0 0 0 0
      ;;
    ')')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 1
      write_data 0 0 1 0 0 0 1 0
      write_data 0 0 0 1 1 1 0 0
      write_data 0 0 0 0 0 0 0 0
      ;;
    '*')
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 1 0 1 0 1 0
      write_data 0 0 0 1 1 1 0 0
      write_data 0 0 1 0 1 0 1 0
      write_data 0 0 0 0 1 0 0 0
      ;;
    '+')
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 1 1 1 1 1 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 0 1 0 0 0
      ;;
    ',')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 1 0 1 0 0 0 0
      write_data 0 0 1 1 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      ;;
    '-')
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 0 1 0 0 0
      ;;
    '.')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 1 1 0 0 0 0 0
      write_data 0 1 1 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      ;;
    '/')
      write_data 0 0 1 0 0 0 0 0
      write_data 0 0 0 1 0 0 0 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 0 0 1 0 0
      write_data 0 0 0 0 0 0 1 0
      ;;
    '0')
      write_data 0 0 1 1 1 1 1 0
      write_data 0 1 0 1 0 0 0 1
      write_data 0 1 0 0 1 0 0 1
      write_data 0 1 0 0 0 1 0 1
      write_data 0 0 1 1 1 1 1 0
      ;;
    '1')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 1 0 0 0 0 1 0
      write_data 0 1 1 1 1 1 1 1
      write_data 0 1 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      ;;
    '2')
      write_data 0 1 0 0 0 0 1 0
      write_data 0 1 1 0 0 0 0 1
      write_data 0 1 0 1 0 0 0 1
      write_data 0 1 0 0 1 0 0 1
      write_data 0 1 0 0 0 1 1 0
      ;;
    '3')
      write_data 0 0 1 0 0 0 0 1
      write_data 0 1 0 0 0 0 0 1
      write_data 0 1 0 0 0 1 0 1
      write_data 0 1 0 0 1 0 1 1
      write_data 0 0 1 1 0 0 0 1
      ;;
    '4')
      write_data 0 0 0 1 1 0 0 0
      write_data 0 0 0 1 0 1 0 0
      write_data 0 0 0 1 0 0 1 0
      write_data 0 1 1 1 1 1 1 1
      write_data 0 0 0 1 0 0 0 0
      ;;
    '5')
      write_data 0 0 1 0 0 1 1 1
      write_data 0 1 0 0 0 1 0 1
      write_data 0 1 0 0 0 1 0 1
      write_data 0 1 0 0 0 1 0 1
      write_data 0 0 1 1 1 0 0 1
      ;;
    '6')
      write_data 0 0 1 1 1 1 0 0
      write_data 0 1 0 0 1 0 1 0
      write_data 0 1 0 0 1 0 0 1
      write_data 0 1 0 0 1 0 0 1
      write_data 0 0 1 1 0 0 0 0
      ;;
    '7')
      write_data 0 0 0 0 0 0 0 1
      write_data 0 1 1 1 0 0 0 1
      write_data 0 0 0 0 1 0 0 1
      write_data 0 0 0 0 0 1 0 1
      write_data 0 0 0 0 0 0 1 1
      ;;
    '8')
      write_data 0 0 1 1 0 1 1 0
      write_data 0 1 0 0 1 0 0 1
      write_data 0 1 0 0 1 0 0 1
      write_data 0 1 0 0 1 0 0 1
      write_data 0 0 1 1 0 1 1 0
      ;;
    '9')
      write_data 0 0 0 0 0 1 1 0
      write_data 0 1 0 0 1 0 0 1
      write_data 0 1 0 0 1 0 0 1
      write_data 0 0 1 0 1 0 0 1
      write_data 0 0 0 1 1 1 1 0
      ;;
    ':')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 1 1 0 1 1 0
      write_data 0 0 1 1 0 1 1 0
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      ;;
    ';')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 1 0 1 0 1 1 0
      write_data 0 0 1 1 0 1 1 0
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      ;;
    '<')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 1 0 1 0 0
      write_data 0 0 1 0 0 0 1 0
      write_data 0 1 0 0 0 0 0 1
      ;;
    '=')
      write_data 0 0 0 1 0 1 0 0
      write_data 0 0 0 1 0 1 0 0
      write_data 0 0 0 1 0 1 0 0
      write_data 0 0 0 1 0 1 0 0
      write_data 0 0 0 1 0 1 0 0
      ;;
    '>')
      write_data 0 1 0 0 0 0 0 1
      write_data 0 0 1 0 0 0 1 0
      write_data 0 0 0 1 0 1 0 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 0 0 0 0 0
      ;;
    '?')
      write_data 0 0 0 0 0 0 1 0
      write_data 0 0 0 0 0 0 0 1
      write_data 0 1 0 1 0 0 0 1
      write_data 0 0 0 0 1 0 0 1
      write_data 0 0 0 0 0 1 1 0
      ;;
    '@')
      write_data 0 0 1 1 0 0 1 0
      write_data 0 1 0 0 1 0 0 1
      write_data 0 1 1 1 1 0 0 1
      write_data 0 1 0 0 0 0 0 1
      write_data 0 0 1 1 1 1 1 0
      ;;
    'A')
      write_data 0 1 1 1 1 1 1 0
      write_data 0 0 0 1 0 0 0 1
      write_data 0 0 0 1 0 0 0 1
      write_data 0 0 0 1 0 0 0 1
      write_data 0 1 1 1 1 1 1 0
      ;;
    'B')
      write_data 0 1 1 1 1 1 1 1
      write_data 0 1 0 0 1 0 0 1
      write_data 0 1 0 0 1 0 0 1
      write_data 0 1 0 0 1 0 0 1
      write_data 0 0 1 1 0 1 1 0
      ;;
    'C')
      write_data 0 0 1 1 1 1 1 0
      write_data 0 1 0 0 0 0 0 1
      write_data 0 1 0 0 0 0 0 1
      write_data 0 1 0 0 0 0 0 1
      write_data 0 0 1 0 0 0 1 0
      ;;
    'D')
      write_data 0 1 1 1 1 1 1 1
      write_data 0 1 0 0 0 0 0 1
      write_data 0 1 0 0 0 0 0 1
      write_data 0 0 1 0 0 0 1 0
      write_data 0 0 0 1 1 1 0 0
      ;;
    'E')
      write_data 0 1 1 1 1 1 1 1
      write_data 0 1 0 0 1 0 0 1
      write_data 0 1 0 0 1 0 0 1
      write_data 0 1 0 0 1 0 0 1
      write_data 0 1 0 0 0 0 0 1
      ;;
    'F')
      write_data 0 1 1 1 1 1 1 1
      write_data 0 0 0 0 1 0 0 1
      write_data 0 0 0 0 1 0 0 1
      write_data 0 0 0 0 0 0 0 1
      write_data 0 0 0 0 0 0 0 1
      ;;
    'G')
      write_data 0 0 1 1 1 1 1 0
      write_data 0 1 0 0 0 0 0 1
      write_data 0 1 0 0 0 0 0 1
      write_data 0 1 0 1 0 0 0 1
      write_data 0 0 1 1 0 0 1 0
      ;;
    'H')
      write_data 0 1 1 1 1 1 1 1
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 1 1 1 1 1 1 1
      ;;
    'I')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 1
      write_data 0 1 1 1 1 1 1 1
      write_data 0 1 0 0 0 0 0 1
      write_data 0 0 0 0 0 0 0 0
      ;;
    'J')
      write_data 0 0 1 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 1
      write_data 0 0 1 1 1 1 1 1
      write_data 0 0 0 0 0 0 0 1
      ;;
    'K')
      write_data 0 1 1 1 1 1 1 1
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 1 0 1 0 0
      write_data 0 0 1 0 0 0 1 0
      write_data 0 1 0 0 0 0 0 1
      ;;
    'L')
      write_data 0 1 1 1 1 1 1 1
      write_data 0 1 0 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 0
      ;;
    'M')
      write_data 0 1 1 1 1 1 1 1
      write_data 0 0 0 0 0 0 1 0
      write_data 0 0 0 0 0 1 0 0
      write_data 0 0 0 0 0 0 1 0
      write_data 0 1 1 1 1 1 1 1
      ;;
    'N')
      write_data 0 1 1 1 1 1 1 1
      write_data 0 0 0 0 0 1 0 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 1 0 0 0 0
      write_data 0 1 1 1 1 1 1 1
      ;;
    'O')
      write_data 0 0 1 1 1 1 1 0
      write_data 0 1 0 0 0 0 0 1
      write_data 0 1 0 0 0 0 0 1
      write_data 0 1 0 0 0 0 0 1
      write_data 0 0 1 1 1 1 1 0
      ;;
    'P')
      write_data 0 1 1 1 1 1 1 1
      write_data 0 0 0 0 1 0 0 1
      write_data 0 0 0 0 1 0 0 1
      write_data 0 0 0 0 1 0 0 1
      write_data 0 0 0 0 0 1 1 0
      ;;
    'Q')
      write_data 0 0 1 1 1 1 1 0
      write_data 0 1 0 0 0 0 0 1
      write_data 0 1 0 1 0 0 0 1
      write_data 0 0 1 0 0 0 0 1
      write_data 0 1 0 1 1 1 1 0
      ;;
    'R')
      write_data 0 1 1 1 1 1 1 1
      write_data 0 0 0 0 1 0 0 1
      write_data 0 0 0 1 1 0 0 1
      write_data 0 0 1 0 1 0 0 1
      write_data 0 1 0 0 0 1 1 0
      ;;
    'S')
      write_data 0 1 0 0 0 1 1 0
      write_data 0 1 0 0 1 0 0 1
      write_data 0 1 0 0 1 0 0 1
      write_data 0 1 0 0 1 0 0 1
      write_data 0 0 1 1 0 0 0 1
      ;;
    'T')
      write_data 0 0 0 0 0 0 0 1
      write_data 0 0 0 0 0 0 0 1
      write_data 0 1 1 1 1 1 1 1
      write_data 0 0 0 0 0 0 0 1
      write_data 0 0 0 0 0 0 0 1
      ;;
    'U')
      write_data 0 0 1 1 1 1 1 1
      write_data 0 1 0 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 0
      write_data 0 0 1 1 1 1 1 1
      ;;
    'V')
      write_data 0 0 0 1 1 1 1 1
      write_data 0 0 1 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 0
      write_data 0 0 1 0 0 0 0 0
      write_data 0 0 0 1 1 1 1 1
      ;;
    'W')
      write_data 0 1 1 1 1 1 1 1
      write_data 0 0 1 0 0 0 0 0
      write_data 0 0 0 1 1 0 0 0
      write_data 0 0 1 0 0 0 0 0
      write_data 0 1 1 1 1 1 1 1
      ;;
    'X')
      write_data 0 1 1 0 0 0 1 1
      write_data 0 0 0 1 0 1 0 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 1 0 1 0 0
      write_data 0 1 1 0 0 0 1 1
      ;;
    'Y')
      write_data 0 0 0 0 0 0 1 1
      write_data 0 0 0 0 0 1 0 0
      write_data 0 1 1 1 1 0 0 0
      write_data 0 0 0 0 0 1 0 0
      write_data 0 0 0 0 0 0 1 1
      ;;
    'Z')
      write_data 0 1 1 0 0 0 0 1
      write_data 0 1 0 1 0 0 0 1
      write_data 0 1 0 0 1 0 0 1
      write_data 0 1 0 0 0 1 0 1
      write_data 0 1 0 0 0 0 1 1
      ;;
    '[')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      write_data 0 1 1 1 1 1 1 1
      write_data 0 1 0 0 0 0 0 1
      write_data 0 1 0 0 0 0 0 1
      ;;
    '\')
      write_data 0 0 0 0 0 0 1 0
      write_data 0 0 0 0 0 1 0 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 1 0 0 0 0
      write_data 0 0 1 0 0 0 0 0
      ;;
    ']')
      write_data 0 1 0 0 0 0 0 1
      write_data 0 1 0 0 0 0 0 1
      write_data 0 1 1 1 1 1 1 1
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      ;;
    '^')
      write_data 0 0 0 0 0 1 0 0
      write_data 0 0 0 0 0 0 1 0
      write_data 0 0 0 0 0 0 0 1
      write_data 0 0 0 0 0 0 1 0
      write_data 0 0 0 0 0 1 0 0
      ;;
    '_')
      write_data 0 1 0 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 0
      ;;
    '`')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 1
      write_data 0 0 0 0 0 0 1 0
      write_data 0 0 0 0 0 1 0 0
      write_data 0 0 0 0 0 0 0 0
      ;;
    'a')
      write_data 0 0 1 0 0 0 0 0
      write_data 0 1 0 1 0 1 0 0
      write_data 0 1 0 1 0 1 0 0
      write_data 0 1 0 1 0 1 0 0
      write_data 0 1 1 1 1 0 0 0
      ;;
    'b')
      write_data 0 1 1 1 1 1 1 1
      write_data 0 1 0 0 1 0 0 0
      write_data 0 1 0 0 0 1 0 0
      write_data 0 1 0 0 0 1 0 0
      write_data 0 0 1 1 1 0 0 0
      ;;
    'c')
      write_data 0 0 1 1 1 0 0 0
      write_data 0 1 0 0 0 1 0 0
      write_data 0 1 0 0 0 1 0 0
      write_data 0 1 0 0 0 1 0 0
      write_data 0 0 1 0 0 0 0 0
      ;;
    'd')
      write_data 0 0 1 1 1 0 0 0
      write_data 0 1 0 0 0 1 0 0
      write_data 0 1 0 0 0 1 0 0
      write_data 0 1 0 0 1 0 0 0
      write_data 0 1 1 1 1 1 1 1
      ;;
    'e')
      write_data 0 0 1 1 1 0 0 0
      write_data 0 1 0 1 0 1 0 0
      write_data 0 1 0 1 0 1 0 0
      write_data 0 1 0 1 0 1 0 0
      write_data 0 0 0 1 1 0 0 0
      ;;
    'f')
      write_data 0 0 0 0 1 0 0 0
      write_data 0 1 1 1 1 1 1 0
      write_data 0 0 0 0 1 0 0 1
      write_data 0 0 0 0 0 0 0 1
      write_data 0 0 0 0 0 0 1 0
      ;;
    'g')
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 1 0 1 0 0
      write_data 0 1 0 1 0 1 0 0
      write_data 0 1 0 1 0 1 0 0
      write_data 0 0 1 1 1 1 0 0
      ;;
    'h')
      write_data 0 1 1 1 1 1 1 1
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 0 0 1 0 0
      write_data 0 0 0 0 0 1 0 0
      write_data 0 1 1 1 1 0 0 0
      ;;
    'i')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 1 0 0 0 1 0 0
      write_data 0 1 1 1 1 1 0 1
      write_data 0 1 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      ;;
    'j')
      write_data 0 0 1 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 0
      write_data 0 1 0 0 0 1 0 0
      write_data 0 0 1 1 1 1 0 1
      write_data 0 0 0 0 0 0 0 0
      ;;
    'k')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 1 1 1 1 1 1 1
      write_data 0 0 0 1 0 0 0 0
      write_data 0 0 1 0 1 0 0 0
      write_data 0 1 0 0 0 1 0 0
      ;;
    'l')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 1
      write_data 0 1 1 1 1 1 1 1
      write_data 0 1 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      ;;
    'm')
      write_data 0 1 1 1 1 1 0 0
      write_data 0 0 0 0 0 1 0 0
      write_data 0 0 0 1 1 0 0 0
      write_data 0 0 0 0 0 1 0 0
      write_data 0 1 1 1 1 0 0 0
      ;;
    'n')
      write_data 0 1 1 1 1 1 0 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 0 0 1 0 0
      write_data 0 0 0 0 0 1 0 0
      write_data 0 1 1 1 1 0 0 0
      ;;
    'o')
      write_data 0 0 1 1 1 0 0 0
      write_data 0 1 0 0 0 1 0 0
      write_data 0 1 0 0 0 1 0 0
      write_data 0 1 0 0 0 1 0 0
      write_data 0 0 1 1 1 0 0 0
      ;;
    'p')
      write_data 0 1 1 1 1 1 0 0
      write_data 0 0 0 1 0 1 0 0
      write_data 0 0 0 1 0 1 0 0
      write_data 0 0 0 1 0 1 0 0
      write_data 0 0 0 0 1 0 0 0
      ;;
    'q')
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 1 0 1 0 0
      write_data 0 0 0 1 0 1 0 0
      write_data 0 0 0 1 1 0 0 0
      write_data 0 1 1 1 1 1 0 0
      ;;
    'r')
      write_data 0 1 1 1 1 1 0 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 0 0 1 0 0
      write_data 0 0 0 0 0 1 0 0
      write_data 0 0 0 0 1 0 0 0
      ;;
    's')
      write_data 0 1 0 0 1 0 0 0
      write_data 0 1 0 1 0 1 0 0
      write_data 0 1 0 1 0 1 0 0
      write_data 0 1 0 1 0 1 0 0
      write_data 0 0 1 0 0 0 0 0
      ;;
    't')
      write_data 0 0 0 0 0 1 0 0
      write_data 0 0 1 1 1 1 1 1
      write_data 0 1 0 0 0 1 0 0
      write_data 0 1 0 0 0 0 0 0
      write_data 0 0 1 0 0 0 0 0
      ;;
    'u')
      write_data 0 0 1 1 1 1 0 0
      write_data 0 1 0 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 0
      write_data 0 0 1 0 0 0 0 0
      write_data 0 1 1 1 1 1 0 0
      ;;
    'v')
      write_data 0 0 0 1 1 1 0 0
      write_data 0 0 1 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 0
      write_data 0 0 1 0 0 0 0 0
      write_data 0 0 0 1 1 1 0 0
      ;;
    'w')
      write_data 0 0 1 1 1 1 0 0
      write_data 0 1 0 0 0 0 0 0
      write_data 0 0 1 1 0 0 0 0
      write_data 0 1 0 0 0 0 0 0
      write_data 0 0 1 1 1 1 0 0
      ;;
    'x')
      write_data 0 1 0 0 0 1 0 0
      write_data 0 0 1 0 1 0 0 0
      write_data 0 0 0 1 0 0 0 0
      write_data 0 0 1 0 1 0 0 0
      write_data 0 1 0 0 0 1 0 0
      ;;
    'y')
      write_data 0 0 0 0 1 1 0 0
      write_data 0 1 0 1 0 0 0 0
      write_data 0 1 0 1 0 0 0 0
      write_data 0 1 0 1 0 0 0 0
      write_data 0 0 1 1 1 1 0 0
      ;;
    'z')
      write_data 0 1 0 0 0 1 0 0
      write_data 0 1 1 0 0 1 0 0
      write_data 0 1 0 1 0 1 0 0
      write_data 0 1 0 0 1 1 0 0
      write_data 0 1 0 0 0 1 0 0
      ;;
    '{')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 1 1 0 1 1 0
      write_data 0 1 0 0 0 0 0 1
      write_data 0 0 0 0 0 0 0 0
      ;;
    '|')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      write_data 0 1 1 1 1 1 1 1
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      ;;
    '}')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 1
      write_data 0 0 1 1 0 1 1 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 0 0 0 0 0
      ;;
    '~')
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 1 0 1 0 1 0
      write_data 0 0 0 1 1 1 0 0
      write_data 0 0 0 0 1 0 0 0
      ;;
    '')
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 1 1 1 0 0
      write_data 0 0 1 0 1 0 1 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 0 1 0 0 0
      ;;
    esac
  done
}
