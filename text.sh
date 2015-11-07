#!/bin/sh
write_text () {
  written=0
  for i in `seq 0 ${#1}`; do
    if [[ $i != 0 ]]; then
      write_data 0 0 0 0 0 0 0 0
      written=$((written+1))
    fi
    case "${1:$i:1}" in
    ' ')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      written=$((written+5))
      ;;
    '!')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      write_data 0 1 0 1 1 1 1 1
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      written=$((written+5))
      ;;
    '"')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 1 1 1
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 1 1 1
      write_data 0 0 0 0 0 0 0 0
      written=$((written+5))
      ;;
    '#')
      write_data 0 0 0 1 0 1 0 0
      write_data 0 1 1 1 1 1 1 1
      write_data 0 0 0 1 0 1 0 0
      write_data 0 1 1 1 1 1 1 1
      write_data 0 0 0 1 0 1 0 0
      written=$((written+5))
      ;;
    '$')
      write_data 0 0 1 0 0 1 0 0
      write_data 0 0 1 0 1 0 1 0
      write_data 0 1 1 1 1 1 1 1
      write_data 0 0 1 0 1 0 1 0
      write_data 0 0 0 1 0 0 1 0
      written=$((written+5))
      ;;
    '%')
      write_data 0 0 1 0 0 0 1 1
      write_data 0 0 0 1 0 0 1 1
      write_data 0 0 0 0 1 0 0 0
      write_data 0 1 1 0 0 1 0 0
      write_data 0 1 1 0 0 0 1 0
      written=$((written+5))
      ;;
    '&')
      write_data 0 0 1 1 0 1 1 0
      write_data 0 1 0 0 1 0 0 1
      write_data 0 1 0 1 0 1 0 1
      write_data 0 0 1 0 0 0 1 0
      write_data 0 1 0 1 0 0 0 0
      written=$((written+5))
      ;;
    "'")
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 1 0 1
      write_data 0 0 0 0 0 0 1 1
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      written=$((written+5))
      ;;
    '(')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 1 1 1 0 0
      write_data 0 0 1 0 0 0 1 0
      write_data 0 1 0 0 0 0 0 1
      write_data 0 0 0 0 0 0 0 0
      written=$((written+5))
      ;;
    ')')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 1
      write_data 0 0 1 0 0 0 1 0
      write_data 0 0 0 1 1 1 0 0
      write_data 0 0 0 0 0 0 0 0
      written=$((written+5))
      ;;
    '*')
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 1 0 1 0 1 0
      write_data 0 0 0 1 1 1 0 0
      write_data 0 0 1 0 1 0 1 0
      write_data 0 0 0 0 1 0 0 0
      written=$((written+5))
      ;;
    '+')
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 1 1 1 1 1 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 0 1 0 0 0
      written=$((written+5))
      ;;
    ',')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 1 0 1 0 0 0 0
      write_data 0 0 1 1 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      written=$((written+5))
      ;;
    '-')
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 0 1 0 0 0
      written=$((written+5))
      ;;
    '.')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 1 1 0 0 0 0 0
      write_data 0 1 1 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      written=$((written+5))
      ;;
    '/')
      write_data 0 0 1 0 0 0 0 0
      write_data 0 0 0 1 0 0 0 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 0 0 1 0 0
      write_data 0 0 0 0 0 0 1 0
      written=$((written+5))
      ;;
    '0')
      write_data 0 0 1 1 1 1 1 0
      write_data 0 1 0 1 0 0 0 1
      write_data 0 1 0 0 1 0 0 1
      write_data 0 1 0 0 0 1 0 1
      write_data 0 0 1 1 1 1 1 0
      written=$((written+5))
      ;;
    '1')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 1 0 0 0 0 1 0
      write_data 0 1 1 1 1 1 1 1
      write_data 0 1 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      written=$((written+5))
      ;;
    '2')
      write_data 0 1 0 0 0 0 1 0
      write_data 0 1 1 0 0 0 0 1
      write_data 0 1 0 1 0 0 0 1
      write_data 0 1 0 0 1 0 0 1
      write_data 0 1 0 0 0 1 1 0
      written=$((written+5))
      ;;
    '3')
      write_data 0 0 1 0 0 0 0 1
      write_data 0 1 0 0 0 0 0 1
      write_data 0 1 0 0 0 1 0 1
      write_data 0 1 0 0 1 0 1 1
      write_data 0 0 1 1 0 0 0 1
      written=$((written+5))
      ;;
    '4')
      write_data 0 0 0 1 1 0 0 0
      write_data 0 0 0 1 0 1 0 0
      write_data 0 0 0 1 0 0 1 0
      write_data 0 1 1 1 1 1 1 1
      write_data 0 0 0 1 0 0 0 0
      written=$((written+5))
      ;;
    '5')
      write_data 0 0 1 0 0 1 1 1
      write_data 0 1 0 0 0 1 0 1
      write_data 0 1 0 0 0 1 0 1
      write_data 0 1 0 0 0 1 0 1
      write_data 0 0 1 1 1 0 0 1
      written=$((written+5))
      ;;
    '6')
      write_data 0 0 1 1 1 1 0 0
      write_data 0 1 0 0 1 0 1 0
      write_data 0 1 0 0 1 0 0 1
      write_data 0 1 0 0 1 0 0 1
      write_data 0 0 1 1 0 0 0 0
      written=$((written+5))
      ;;
    '7')
      write_data 0 0 0 0 0 0 0 1
      write_data 0 1 1 1 0 0 0 1
      write_data 0 0 0 0 1 0 0 1
      write_data 0 0 0 0 0 1 0 1
      write_data 0 0 0 0 0 0 1 1
      written=$((written+5))
      ;;
    '8')
      write_data 0 0 1 1 0 1 1 0
      write_data 0 1 0 0 1 0 0 1
      write_data 0 1 0 0 1 0 0 1
      write_data 0 1 0 0 1 0 0 1
      write_data 0 0 1 1 0 1 1 0
      written=$((written+5))
      ;;
    '9')
      write_data 0 0 0 0 0 1 1 0
      write_data 0 1 0 0 1 0 0 1
      write_data 0 1 0 0 1 0 0 1
      write_data 0 0 1 0 1 0 0 1
      write_data 0 0 0 1 1 1 1 0
      written=$((written+5))
      ;;
    ':')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 1 1 0 1 1 0
      write_data 0 0 1 1 0 1 1 0
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      written=$((written+5))
      ;;
    ';')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 1 0 1 0 1 1 0
      write_data 0 0 1 1 0 1 1 0
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      written=$((written+5))
      ;;
    '<')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 1 0 1 0 0
      write_data 0 0 1 0 0 0 1 0
      write_data 0 1 0 0 0 0 0 1
      written=$((written+5))
      ;;
    '=')
      write_data 0 0 0 1 0 1 0 0
      write_data 0 0 0 1 0 1 0 0
      write_data 0 0 0 1 0 1 0 0
      write_data 0 0 0 1 0 1 0 0
      write_data 0 0 0 1 0 1 0 0
      written=$((written+5))
      ;;
    '>')
      write_data 0 1 0 0 0 0 0 1
      write_data 0 0 1 0 0 0 1 0
      write_data 0 0 0 1 0 1 0 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 0 0 0 0 0
      written=$((written+5))
      ;;
    '?')
      write_data 0 0 0 0 0 0 1 0
      write_data 0 0 0 0 0 0 0 1
      write_data 0 1 0 1 0 0 0 1
      write_data 0 0 0 0 1 0 0 1
      write_data 0 0 0 0 0 1 1 0
      written=$((written+5))
      ;;
    '@')
      write_data 0 0 1 1 0 0 1 0
      write_data 0 1 0 0 1 0 0 1
      write_data 0 1 1 1 1 0 0 1
      write_data 0 1 0 0 0 0 0 1
      write_data 0 0 1 1 1 1 1 0
      written=$((written+5))
      ;;
    'A')
      write_data 0 1 1 1 1 1 1 0
      write_data 0 0 0 1 0 0 0 1
      write_data 0 0 0 1 0 0 0 1
      write_data 0 0 0 1 0 0 0 1
      write_data 0 1 1 1 1 1 1 0
      written=$((written+5))
      ;;
    'B')
      write_data 0 1 1 1 1 1 1 1
      write_data 0 1 0 0 1 0 0 1
      write_data 0 1 0 0 1 0 0 1
      write_data 0 1 0 0 1 0 0 1
      write_data 0 0 1 1 0 1 1 0
      written=$((written+5))
      ;;
    'C')
      write_data 0 0 1 1 1 1 1 0
      write_data 0 1 0 0 0 0 0 1
      write_data 0 1 0 0 0 0 0 1
      write_data 0 1 0 0 0 0 0 1
      write_data 0 0 1 0 0 0 1 0
      written=$((written+5))
      ;;
    'D')
      write_data 0 1 1 1 1 1 1 1
      write_data 0 1 0 0 0 0 0 1
      write_data 0 1 0 0 0 0 0 1
      write_data 0 0 1 0 0 0 1 0
      write_data 0 0 0 1 1 1 0 0
      written=$((written+5))
      ;;
    'E')
      write_data 0 1 1 1 1 1 1 1
      write_data 0 1 0 0 1 0 0 1
      write_data 0 1 0 0 1 0 0 1
      write_data 0 1 0 0 1 0 0 1
      write_data 0 1 0 0 0 0 0 1
      written=$((written+5))
      ;;
    'F')
      write_data 0 1 1 1 1 1 1 1
      write_data 0 0 0 0 1 0 0 1
      write_data 0 0 0 0 1 0 0 1
      write_data 0 0 0 0 0 0 0 1
      write_data 0 0 0 0 0 0 0 1
      written=$((written+5))
      ;;
    'G')
      write_data 0 0 1 1 1 1 1 0
      write_data 0 1 0 0 0 0 0 1
      write_data 0 1 0 0 0 0 0 1
      write_data 0 1 0 1 0 0 0 1
      write_data 0 0 1 1 0 0 1 0
      written=$((written+5))
      ;;
    'H')
      write_data 0 1 1 1 1 1 1 1
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 1 1 1 1 1 1 1
      written=$((written+5))
      ;;
    'I')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 1
      write_data 0 1 1 1 1 1 1 1
      write_data 0 1 0 0 0 0 0 1
      write_data 0 0 0 0 0 0 0 0
      written=$((written+5))
      ;;
    'J')
      write_data 0 0 1 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 1
      write_data 0 0 1 1 1 1 1 1
      write_data 0 0 0 0 0 0 0 1
      written=$((written+5))
      ;;
    'K')
      write_data 0 1 1 1 1 1 1 1
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 1 0 1 0 0
      write_data 0 0 1 0 0 0 1 0
      write_data 0 1 0 0 0 0 0 1
      written=$((written+5))
      ;;
    'L')
      write_data 0 1 1 1 1 1 1 1
      write_data 0 1 0 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 0
      written=$((written+5))
      ;;
    'M')
      write_data 0 1 1 1 1 1 1 1
      write_data 0 0 0 0 0 0 1 0
      write_data 0 0 0 0 0 1 0 0
      write_data 0 0 0 0 0 0 1 0
      write_data 0 1 1 1 1 1 1 1
      written=$((written+5))
      ;;
    'N')
      write_data 0 1 1 1 1 1 1 1
      write_data 0 0 0 0 0 1 0 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 1 0 0 0 0
      write_data 0 1 1 1 1 1 1 1
      written=$((written+5))
      ;;
    'O')
      write_data 0 0 1 1 1 1 1 0
      write_data 0 1 0 0 0 0 0 1
      write_data 0 1 0 0 0 0 0 1
      write_data 0 1 0 0 0 0 0 1
      write_data 0 0 1 1 1 1 1 0
      written=$((written+5))
      ;;
    'P')
      write_data 0 1 1 1 1 1 1 1
      write_data 0 0 0 0 1 0 0 1
      write_data 0 0 0 0 1 0 0 1
      write_data 0 0 0 0 1 0 0 1
      write_data 0 0 0 0 0 1 1 0
      written=$((written+5))
      ;;
    'Q')
      write_data 0 0 1 1 1 1 1 0
      write_data 0 1 0 0 0 0 0 1
      write_data 0 1 0 1 0 0 0 1
      write_data 0 0 1 0 0 0 0 1
      write_data 0 1 0 1 1 1 1 0
      written=$((written+5))
      ;;
    'R')
      write_data 0 1 1 1 1 1 1 1
      write_data 0 0 0 0 1 0 0 1
      write_data 0 0 0 1 1 0 0 1
      write_data 0 0 1 0 1 0 0 1
      write_data 0 1 0 0 0 1 1 0
      written=$((written+5))
      ;;
    'S')
      write_data 0 1 0 0 0 1 1 0
      write_data 0 1 0 0 1 0 0 1
      write_data 0 1 0 0 1 0 0 1
      write_data 0 1 0 0 1 0 0 1
      write_data 0 0 1 1 0 0 0 1
      written=$((written+5))
      ;;
    'T')
      write_data 0 0 0 0 0 0 0 1
      write_data 0 0 0 0 0 0 0 1
      write_data 0 1 1 1 1 1 1 1
      write_data 0 0 0 0 0 0 0 1
      write_data 0 0 0 0 0 0 0 1
      written=$((written+5))
      ;;
    'U')
      write_data 0 0 1 1 1 1 1 1
      write_data 0 1 0 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 0
      write_data 0 0 1 1 1 1 1 1
      written=$((written+5))
      ;;
    'V')
      write_data 0 0 0 1 1 1 1 1
      write_data 0 0 1 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 0
      write_data 0 0 1 0 0 0 0 0
      write_data 0 0 0 1 1 1 1 1
      written=$((written+5))
      ;;
    'W')
      write_data 0 1 1 1 1 1 1 1
      write_data 0 0 1 0 0 0 0 0
      write_data 0 0 0 1 1 0 0 0
      write_data 0 0 1 0 0 0 0 0
      write_data 0 1 1 1 1 1 1 1
      written=$((written+5))
      ;;
    'X')
      write_data 0 1 1 0 0 0 1 1
      write_data 0 0 0 1 0 1 0 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 1 0 1 0 0
      write_data 0 1 1 0 0 0 1 1
      written=$((written+5))
      ;;
    'Y')
      write_data 0 0 0 0 0 0 1 1
      write_data 0 0 0 0 0 1 0 0
      write_data 0 1 1 1 1 0 0 0
      write_data 0 0 0 0 0 1 0 0
      write_data 0 0 0 0 0 0 1 1
      written=$((written+5))
      ;;
    'Z')
      write_data 0 1 1 0 0 0 0 1
      write_data 0 1 0 1 0 0 0 1
      write_data 0 1 0 0 1 0 0 1
      write_data 0 1 0 0 0 1 0 1
      write_data 0 1 0 0 0 0 1 1
      written=$((written+5))
      ;;
    '[')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      write_data 0 1 1 1 1 1 1 1
      write_data 0 1 0 0 0 0 0 1
      write_data 0 1 0 0 0 0 0 1
      written=$((written+5))
      ;;
    '\')
      write_data 0 0 0 0 0 0 1 0
      write_data 0 0 0 0 0 1 0 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 1 0 0 0 0
      write_data 0 0 1 0 0 0 0 0
      written=$((written+5))
      ;;
    ']')
      write_data 0 1 0 0 0 0 0 1
      write_data 0 1 0 0 0 0 0 1
      write_data 0 1 1 1 1 1 1 1
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      written=$((written+5))
      ;;
    '^')
      write_data 0 0 0 0 0 1 0 0
      write_data 0 0 0 0 0 0 1 0
      write_data 0 0 0 0 0 0 0 1
      write_data 0 0 0 0 0 0 1 0
      write_data 0 0 0 0 0 1 0 0
      written=$((written+5))
      ;;
    '_')
      write_data 0 1 0 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 0
      written=$((written+5))
      ;;
    '`')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 1
      write_data 0 0 0 0 0 0 1 0
      write_data 0 0 0 0 0 1 0 0
      write_data 0 0 0 0 0 0 0 0
      written=$((written+5))
      ;;
    'a')
      write_data 0 0 1 0 0 0 0 0
      write_data 0 1 0 1 0 1 0 0
      write_data 0 1 0 1 0 1 0 0
      write_data 0 1 0 1 0 1 0 0
      write_data 0 1 1 1 1 0 0 0
      written=$((written+5))
      ;;
    'b')
      write_data 0 1 1 1 1 1 1 1
      write_data 0 1 0 0 1 0 0 0
      write_data 0 1 0 0 0 1 0 0
      write_data 0 1 0 0 0 1 0 0
      write_data 0 0 1 1 1 0 0 0
      written=$((written+5))
      ;;
    'c')
      write_data 0 0 1 1 1 0 0 0
      write_data 0 1 0 0 0 1 0 0
      write_data 0 1 0 0 0 1 0 0
      write_data 0 1 0 0 0 1 0 0
      write_data 0 0 1 0 0 0 0 0
      written=$((written+5))
      ;;
    'd')
      write_data 0 0 1 1 1 0 0 0
      write_data 0 1 0 0 0 1 0 0
      write_data 0 1 0 0 0 1 0 0
      write_data 0 1 0 0 1 0 0 0
      write_data 0 1 1 1 1 1 1 1
      written=$((written+5))
      ;;
    'e')
      write_data 0 0 1 1 1 0 0 0
      write_data 0 1 0 1 0 1 0 0
      write_data 0 1 0 1 0 1 0 0
      write_data 0 1 0 1 0 1 0 0
      write_data 0 0 0 1 1 0 0 0
      written=$((written+5))
      ;;
    'f')
      write_data 0 0 0 0 1 0 0 0
      write_data 0 1 1 1 1 1 1 0
      write_data 0 0 0 0 1 0 0 1
      write_data 0 0 0 0 0 0 0 1
      write_data 0 0 0 0 0 0 1 0
      written=$((written+5))
      ;;
    'g')
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 1 0 1 0 0
      write_data 0 1 0 1 0 1 0 0
      write_data 0 1 0 1 0 1 0 0
      write_data 0 0 1 1 1 1 0 0
      written=$((written+5))
      ;;
    'h')
      write_data 0 1 1 1 1 1 1 1
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 0 0 1 0 0
      write_data 0 0 0 0 0 1 0 0
      write_data 0 1 1 1 1 0 0 0
      written=$((written+5))
      ;;
    'i')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 1 0 0 0 1 0 0
      write_data 0 1 1 1 1 1 0 1
      write_data 0 1 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      written=$((written+5))
      ;;
    'j')
      write_data 0 0 1 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 0
      write_data 0 1 0 0 0 1 0 0
      write_data 0 0 1 1 1 1 0 1
      write_data 0 0 0 0 0 0 0 0
      written=$((written+5))
      ;;
    'k')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 1 1 1 1 1 1 1
      write_data 0 0 0 1 0 0 0 0
      write_data 0 0 1 0 1 0 0 0
      write_data 0 1 0 0 0 1 0 0
      written=$((written+5))
      ;;
    'l')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 1
      write_data 0 1 1 1 1 1 1 1
      write_data 0 1 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      written=$((written+5))
      ;;
    'm')
      write_data 0 1 1 1 1 1 0 0
      write_data 0 0 0 0 0 1 0 0
      write_data 0 0 0 1 1 0 0 0
      write_data 0 0 0 0 0 1 0 0
      write_data 0 1 1 1 1 0 0 0
      written=$((written+5))
      ;;
    'n')
      write_data 0 1 1 1 1 1 0 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 0 0 1 0 0
      write_data 0 0 0 0 0 1 0 0
      write_data 0 1 1 1 1 0 0 0
      written=$((written+5))
      ;;
    'o')
      write_data 0 0 1 1 1 0 0 0
      write_data 0 1 0 0 0 1 0 0
      write_data 0 1 0 0 0 1 0 0
      write_data 0 1 0 0 0 1 0 0
      write_data 0 0 1 1 1 0 0 0
      written=$((written+5))
      ;;
    'p')
      write_data 0 1 1 1 1 1 0 0
      write_data 0 0 0 1 0 1 0 0
      write_data 0 0 0 1 0 1 0 0
      write_data 0 0 0 1 0 1 0 0
      write_data 0 0 0 0 1 0 0 0
      written=$((written+5))
      ;;
    'q')
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 1 0 1 0 0
      write_data 0 0 0 1 0 1 0 0
      write_data 0 0 0 1 1 0 0 0
      write_data 0 1 1 1 1 1 0 0
      written=$((written+5))
      ;;
    'r')
      write_data 0 1 1 1 1 1 0 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 0 0 1 0 0
      write_data 0 0 0 0 0 1 0 0
      write_data 0 0 0 0 1 0 0 0
      written=$((written+5))
      ;;
    's')
      write_data 0 1 0 0 1 0 0 0
      write_data 0 1 0 1 0 1 0 0
      write_data 0 1 0 1 0 1 0 0
      write_data 0 1 0 1 0 1 0 0
      write_data 0 0 1 0 0 0 0 0
      written=$((written+5))
      ;;
    't')
      write_data 0 0 0 0 0 1 0 0
      write_data 0 0 1 1 1 1 1 1
      write_data 0 1 0 0 0 1 0 0
      write_data 0 1 0 0 0 0 0 0
      write_data 0 0 1 0 0 0 0 0
      written=$((written+5))
      ;;
    'u')
      write_data 0 0 1 1 1 1 0 0
      write_data 0 1 0 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 0
      write_data 0 0 1 0 0 0 0 0
      write_data 0 1 1 1 1 1 0 0
      written=$((written+5))
      ;;
    'v')
      write_data 0 0 0 1 1 1 0 0
      write_data 0 0 1 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 0
      write_data 0 0 1 0 0 0 0 0
      write_data 0 0 0 1 1 1 0 0
      written=$((written+5))
      ;;
    'w')
      write_data 0 0 1 1 1 1 0 0
      write_data 0 1 0 0 0 0 0 0
      write_data 0 0 1 1 0 0 0 0
      write_data 0 1 0 0 0 0 0 0
      write_data 0 0 1 1 1 1 0 0
      written=$((written+5))
      ;;
    'x')
      write_data 0 1 0 0 0 1 0 0
      write_data 0 0 1 0 1 0 0 0
      write_data 0 0 0 1 0 0 0 0
      write_data 0 0 1 0 1 0 0 0
      write_data 0 1 0 0 0 1 0 0
      written=$((written+5))
      ;;
    'y')
      write_data 0 0 0 0 1 1 0 0
      write_data 0 1 0 1 0 0 0 0
      write_data 0 1 0 1 0 0 0 0
      write_data 0 1 0 1 0 0 0 0
      write_data 0 0 1 1 1 1 0 0
      written=$((written+5))
      ;;
    'z')
      write_data 0 1 0 0 0 1 0 0
      write_data 0 1 1 0 0 1 0 0
      write_data 0 1 0 1 0 1 0 0
      write_data 0 1 0 0 1 1 0 0
      write_data 0 1 0 0 0 1 0 0
      written=$((written+5))
      ;;
    '{')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 1 1 0 1 1 0
      write_data 0 1 0 0 0 0 0 1
      write_data 0 0 0 0 0 0 0 0
      written=$((written+5))
      ;;
    '|')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      write_data 0 1 1 1 1 1 1 1
      write_data 0 0 0 0 0 0 0 0
      write_data 0 0 0 0 0 0 0 0
      written=$((written+5))
      ;;
    '}')
      write_data 0 0 0 0 0 0 0 0
      write_data 0 1 0 0 0 0 0 1
      write_data 0 0 1 1 0 1 1 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 0 0 0 0 0
      written=$((written+5))
      ;;
    '~')
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 1 0 1 0 1 0
      write_data 0 0 0 1 1 1 0 0
      write_data 0 0 0 0 1 0 0 0
      written=$((written+5))
      ;;
    '')
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 1 1 1 0 0
      write_data 0 0 1 0 1 0 1 0
      write_data 0 0 0 0 1 0 0 0
      write_data 0 0 0 0 1 0 0 0
      written=$((written+5))
      ;;
    esac
  done
  for i in `seq 0 $((128-written))`; do write_data 0 0 0 0 0 0 0 0; done
}
