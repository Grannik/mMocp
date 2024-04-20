fnMocpOptionAC()
{
#!/bin/bash
 trap 'echo -en "\ec"; stty sane; exit' SIGINT
 aa=0
 A(){ for b in $(seq 0 20);do E${b};done; }
 B()
{
  local c
  IFS= read -s -n1 c 2>/dev/null >&2
  if [[ $c = $(echo -en "\e") ]]; then
    read -s -n1 c 2>/dev/null >&2
    if [[ $c = \[ ]]; then
      read -s -n1 c 2>/dev/null >&2
      case $c in
        A) echo d ;;
        B) echo e ;;
        C) echo f ;;
        D) echo g ;;
      esac
    fi
  elif [[ "$c" == "$(echo -en \\x0A)" ]]; then
    echo enter
  fi
}
 C()
{
 if [[ $i == d ]];then ((aa--));fi
 if [[ $i == e ]];then ((aa++));fi
 if [[ $aa -lt 0  ]];then aa=20;fi
 if [[ $aa -gt 20 ]];then aa=0;fi;
}

 D()
{
 j1=$((aa+1)); k1=$((aa-1))
 if [[ $k1 -lt 0   ]];then k1=20;fi
 if [[ $j1 -gt 20 ]];then j1=0;fi
 if [[ $aa -lt $aa ]];then echo -en "\e[0m";E$k1;else echo -en "\e[0m";E$j1;fi
 if [[ $j1 -eq 0   ]] || [ $k1 -eq 20 ];then
 echo -en "\e[0m" ; E$k1; E$j1;fi;echo -en "\e[0m";E$k1;E$j1;
}
 TXa()
{
 for (( a=2; a<=29; a++ ))
  do
   echo -e "\e[${a};1H\e[90m\xE2\x94\x82                                                                                \xE2\x94\x82\e[0m"
  done
 echo -en "\e[1;1H\e[90m┌────────────────────────────────────────────────────────────────────────────────┐\e[0m";
 echo -en "\e[2;2H\e[1;90m OPTIONS A - C\e[0m";
 echo -en "\e[3;1H\e[90m├────────────────────────────────────────────────────────────────────────────────┤\e[0m";
 echo -en "\e[4;2H\e[2m Если параметр также может быть установлен в файле конфигурации, командная\e[0m";
 echo -en "\e[5;2H\e[2m строка переопределяет его (но см. параметр -O для исключения параметров файла\e[0m";
 echo -en "\e[6;2H\e[2m конфигурации со списком).\e[0m";
 echo -en "\e[7;1H\e[90m├────────────────────────────────────────────────────────────────────────────────┤\e[0m";
 echo -en "\e[28;1H\e[90m├─ \xE2\x86\x91 Up ───── \xE2\x86\x93 Down ──── \xe2\x86\xb2 Select Enter ────────────────────────────────────────┤\e[0m";
 echo -en "\e[30;1H\e[90m└────────────────────────────────────────────────────────────────────────────────┘\e[0m";
}
  E0(){ echo -en "\e[8;2H Запустите MOC в режиме отладки                                  \e[32m -D, --debug \e[0m";}
  E1(){ echo -en "\e[9;2H Запустите только сервер и выйдите                              \e[32m -S, --server \e[0m";}
  E2(){ echo -en "\e[10;2H Подразумевается -С                                         \e[32m -F, --foreground \e[0m";}
  E3(){ echo -en "\e[11;2H Используйте указанные звуковые драйверы\e[32m -R NAME[:..] --sound-driver NAME[:.] \e[0m";}
  E4(){ echo -en "\e[12;2H Запустите MusicDir (задается в файле конфигурации)          \e[32m -m, --music-dir \e[0m";}
  E5(){ echo -en "\e[13;2H Добавьте в очередь файлы, указанные после параметров          \e[32m -q, --enqueue \e[0m";}
  E6(){ echo -en "\e[14;2H Добавлять файлы, каталоги (рекурсивно) и списки воспроизведения\e[32m -a, --append \e[0m";}
  E7(){ echo -en "\e[15;2H Очистите список воспроизведения                                 \e[32m -c, --clear \e[0m";}
  E8(){ echo -en "\e[16;2H Начните воспроизведение с первого элемента плейлиста             \e[32m -p, --play \e[0m";}
  E9(){ echo -en "\e[17;2H Воспроизведение файлов, заданных в командной строке            \e[32m -l, --playit \e[0m";}
 E10(){ echo -en "\e[18;2H Запросить воспроизведение следующей песни из плейлиста сервера   \e[32m -f, --next \e[0m";}
 E11(){ echo -en "\e[19;2H Запросить воспроизведение предыдущей песни из плейлиста      \e[32m -r, --previous \e[0m";}
 E12(){ echo -en "\e[20;2H Запросите сервер прекратить игру                                 \e[32m -s, --stop \e[0m";}
 E13(){ echo -en "\e[21;2H Выключите сервер                                                 \e[32m -x, --exit \e[0m";}
 E14(){ echo -en "\e[22;2H Запросите сервер приостановить воспроизведение                  \e[32m -P, --pause \e[0m";}
 E15(){ echo -en "\e[23;2H Запросите сервер возобновить воспроизведение после паузы      \e[32m -U, --unpause \e[0m";}
 E16(){ echo -en "\e[24;2H Переключение между воспроизведением и паузой             \e[32m -G, --toggle-pause \e[0m";}
 E17(){ echo -en "\e[25;2H Поиск вперед или назад                             \e[32m -k [+|-]N, --seek [+|-]N \e[0m";}
 E18(){ echo -en "\e[26;2H Используйте файл темы                               \e[32m -T THEME, --theme THEME \e[0m";}
 E19(){ echo -en "\e[27;2H Используйте указанный файл конфигурации              \e[32m -C FILE, --config FILE \e[0m";}
 E20(){ echo -en "\e[29;2H                                                                        \e[90m Exit \e[0m";}
 INI(){ echo -en "\ec" ;stty sane;TXa;A; };INI
 while [[ "$l1" != " " ]]; do case $aa in
  0)D;echo -en "\e[1;90m"; (E0);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Запустите MOC в режиме отладки. Клиент и сервер записывают много информации для
 отладки файлов. Не используйте это; журнал сервера большой. Это доступно только
 в том случае, если MOC был скомпилирован без --disable-debug.
";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
  1)D;echo -en "\e[1;90m"; (E1);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Запустите только сервер и выйдите
";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
  2)D;echo -en "\e[1;90m"; (E2);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Подразумевается -С.
 Запустите сервер на переднем плане и запишите все на стандартный вывод.
";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
  3)D;echo -en "\e[1;90m"; (E3);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Используйте указанные звуковые драйверы. Они могут быть OSS, ALSA, JACK, SNDIO
 или нулевыми (для отладки). Некоторые драйверы могут быть не скомпилированы.
 В файле конфигурации этот параметр называется SoundDriver.
";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
  4)D;echo -en "\e[1;90m"; (E4);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Запустите MusicDir (задается в файле конфигурации).
 Это также можно установить в файле конфигурации как StartInMusicDir.
";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
  5)D;echo -en "\e[1;90m"; (E5);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Добавьте в очередь файлы, указанные после параметров командной строки.
 Не запускайте интерфейс.
";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
  6)D;echo -en "\e[1;90m"; (E6);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Добавлять файлы, каталоги (рекурсивно) и списки воспроизведения,
 заданные после параметров командной строки, в список воспроизведения.
 Не запускайте интерфейс.
";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
  7)D;echo -en "\e[1;90m"; (E7);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Очистите список воспроизведения
";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
  8)D;echo -en "\e[1;90m"; (E8);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Начните воспроизведение с первого элемента плейлиста
";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
  9)D;echo -en "\e[1;90m"; (E9);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Воспроизведение файлов, заданных в командной строке,
 без изменения списков воспроизведения клиентов.
";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
 10)D;echo -en "\e[1;90m";(E10);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Запросить воспроизведение следующей песни из плейлиста сервера
";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
 11)D;echo -en "\e[1;90m";(E11);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Запросить воспроизведение предыдущей песни из плейлиста сервера
";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
 12)D;echo -en "\e[1;90m";(E12);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Запросите сервер прекратить игру
";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
 13)D;echo -en "\e[1;90m";(E13);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Выключите сервер
";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
 14)D;echo -en "\e[1;90m";(E14);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Запросите сервер приостановить воспроизведение
";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
 15)D;echo -en "\e[1;90m";(E15);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Запросите сервер возобновить воспроизведение после паузы
";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
 16)D;echo -en "\e[1;90m";(E16);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Переключение между воспроизведением и паузой
";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
 17)D;echo -en "\e[1;90m";(E17);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Поиск вперед (положительное значение) или назад (отрицательное значение)
 на N секунд в воспроизводимом в данный момент файле.
";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
 18)D;echo -en "\e[1;90m";(E18);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Используйте файл темы. Если путь не является абсолютным,
 поиск файла будет осуществляться в\e[32m /usr/share/moc/themes/\e[0m
 (зависит от префикса установки),\e[32m ~/.moc/themes/\e[0m и в текущем каталоге.
";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
 19)D;echo -en "\e[1;90m";(E19);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Используйте указанный файл конфигурации (который должен быть доступен для чтения)
 вместо файла по умолчанию. Поскольку в этом файле могут быть указаны команды,
 которые вызывают другие приложения, MOC откажется запускаться,
 если он не принадлежит ни пользователю root, ни текущему пользователю,
 или если он доступен для записи кому-либо, кроме его владельца.
";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
 20)D;echo -en "\e[1;90m";(E20);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;fmMocp;fi;;
esac;C;done
}
#---------------------------------------------------------------------------------------------------
fnMocpOptionCX()
{
#!/bin/bash
 trap 'echo -en "\ec"; stty sane; exit' SIGINT
 aa=0
 A(){ for b in $(seq 0 18);do E${b};done; }
 B()
{
  local c
  IFS= read -s -n1 c 2>/dev/null >&2
  if [[ $c = $(echo -en "\e") ]]; then
    read -s -n1 c 2>/dev/null >&2
    if [[ $c = \[ ]]; then
      read -s -n1 c 2>/dev/null >&2
      case $c in
        A) echo d ;;
        B) echo e ;;
        C) echo f ;;
        D) echo g ;;
      esac
    fi
  elif [[ "$c" == "$(echo -en \\x0A)" ]]; then
    echo enter
  fi
}
 C()
{
 if [[ $i == d ]];then ((aa--));fi
 if [[ $i == e ]];then ((aa++));fi
 if [[ $aa -lt 0  ]];then aa=18;fi
 if [[ $aa -gt 18 ]];then aa=0;fi;
}

 D()
{
 j1=$((aa+1)); k1=$((aa-1))
 if [[ $k1 -lt 0   ]];then k1=18;fi
 if [[ $j1 -gt 18 ]];then j1=0;fi
 if [[ $aa -lt $aa ]];then echo -en "\e[0m";E$k1;else echo -en "\e[0m";E$j1;fi
 if [[ $j1 -eq 0   ]] || [ $k1 -eq 18 ];then
 echo -en "\e[0m" ; E$k1; E$j1;fi;echo -en "\e[0m";E$k1;E$j1;
}
 TXa()
{
 for (( a=2; a<=23; a++ ))
  do
   echo -e "\e[${a};1H\e[90m\xE2\x94\x82                                                                                \xE2\x94\x82\e[0m"
  done
 echo -en "\e[1;1H\e[90m┌────────────────────────────────────────────────────────────────────────────────┐\e[0m";
 echo -en "\e[2;2H\e[1;90m OPTIONS C - X\e[0m";
 echo -en "\e[3;1H\e[90m├────────────────────────────────────────────────────────────────────────────────┤\e[0m";
 echo -en "\e[22;1H\e[90m├─ \xE2\x86\x91 Up ───── \xE2\x86\x93 Down ──── \xe2\x86\xb2 Select Enter ────────────────────────────────────────┤\e[0m";
 echo -en "\e[24;1H\e[90m└────────────────────────────────────────────────────────────────────────────────┘\e[0m";
}
  E0(){ echo -en "\e[4;2H Не читайте какой-либо файл конфигурации                         \e[32m --no-config \e[0m";}
  E1(){ echo -en "\e[5;2H Переопределить параметр NAME   \e[32m -O NAME[+]=VALUE, --set-option NAME[+]=VALUE \e[0m";}
  E2(){ echo -en "\e[6;2H Используйте указанный каталог MOC вместо каталога     \e[32m -M DIR, --moc-dir DIR \e[0m";}
  E3(){ echo -en "\e[7;2H Эта копия интерфейса будет синхронизировать свой плейлист        \e[32m -y, --sync \e[0m";}
  E4(){ echo -en "\e[8;2H Эта копия интерфейса не будет синхронизировать свой плейлист   \e[32m -n, --nosync \e[0m";}
  E5(){ echo -en "\e[9;2H Используйте символы ASCII для рисования линий                   \e[32m -A, --ascii \e[0m";}
  E6(){ echo -en "\e[10;2H Распечатайте информацию о воспроизводимом в данный момент файле  \e[32m -i, --info \e[0m";}
  E7(){ echo -en "\e[11;2H Вывести информацию о файле         \e[32m -Q FORMAT_STRING, --format FORMAT_STRING \e[0m";}
  E8(){ echo -en "\e[12;2H Псевдоним -a для обратной совместимости                   \e[32m -e, --recursively \e[0m";}
  E9(){ echo -en "\e[13;2H Распечатайте список опций с краткими описаниями и выйдите        \e[32m -h, --help \e[0m";}
 E10(){ echo -en "\e[14;2H Print a synopsis of the mocp command and exit                       \e[32m --usage \e[0m";}
 E11(){ echo -en "\e[15;2H Print the program version and exit                            \e[32m -V, --version \e[0m";}
 E12(){ echo -en "\e[16;2H Распечатайте аргументы командной строки                         \e[32m --echo-args \e[0m";}
 E13(){ echo -en "\e[17;2H Отрегулируйте громкость микшера                  \e[32m -v [+|-]N, --volume [+|-]N \e[0m";}
 E14(){ echo -en "\e[18;2H                                      \e[32m -t OPTION[,...], --toggle OPTION[,...] \e[0m";}
 E15(){ echo -en "\e[19;2H                                          \e[32m -o OPTION[,...], --on OPTION[,...] \e[0m";}
 E16(){ echo -en "\e[20;2H За ними следует список идентификаторов  \e[32m -u OPTION[,...], --off OPTION[,...] \e[0m";}
 E17(){ echo -en "\e[21;2H Перейти к некоторой позиции в текущем файле        \e[32m -j N{s|%}, --jump N{s|%} \e[0m";}
 E18(){ echo -en "\e[23;2H                                                                        \e[90m Exit \e[0m";}
 INI(){ echo -en "\ec" ;stty sane;TXa;A; };INI
 while [[ "$l1" != " " ]]; do case $aa in
  0)D;echo -en "\e[1;90m"; (E0);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Не читайте какой-либо файл конфигурации,
 а используйте встроенные значения по умолчанию.
";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
  1)D;echo -en "\e[1;90m"; (E1);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Переопределить параметр NAME файла конфигурации с помощью VALUE.
 Эту опцию можно повторять столько раз, сколько необходимо,
 а имя опции не чувствительно к регистру.
 Большинство значений параметров устанавливаются до обработки файла конфигурации
 (что позволяет получать новые значения путем подстановки);
 однако впоследствии параметры listvalued переопределяются
 (что дает возможность выбора, заменять или добавлять настроенные значения).
 См. пример файла конфигурации (config.example) для описания доступных параметров.
 Examples:\e[32m -O AutoNext=no\e[0m
          \e[32m -O messagelingertime=1 -O XTerms+=xxt:xwt\e[0m
 Обратите внимание, что MOC не выполняет подстановку переменных,
 как это происходит для значений, считанных из файла конфигурации.
";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
  2)D;echo -en "\e[1;90m"; (E2);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Используйте указанный каталог MOC вместо каталога по умолчанию.
 Это также приводит к использованию файла конфигурации из этого каталога.
 Это также можно указать в файле конфигурации с помощью опции MOCDir.
";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
  3)D;echo -en "\e[1;90m"; (E3);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Эта копия интерфейса будет синхронизировать свой плейлист с другими клиентами.
 В файле конфигурации эта опция называется SyncPlaylist.
";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
  4)D;echo -en "\e[1;90m"; (E4);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Эта копия интерфейса не будет синхронизировать
 свой плейлист с другими клиентами (см. выше).
";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
  5)D;echo -en "\e[1;90m"; (E5);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Используйте символы ASCII для рисования линий.
 (Это помогает на некоторых терминалах.)
";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
  6)D;echo -en "\e[1;90m"; (E6);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Распечатайте информацию о воспроизводимом в данный момент файле
";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
  7)D;echo -en "\e[1;90m"; (E7);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Вывести информацию о файле, воспроизводимом в данный момент, используя строку
 формата. Замените последовательности строк фактической информацией:\e[32m
 %state     State
 %file      File
 %title     Title
 %artist    Artist
 %song      SongTitle
 %album     Album
 %tt        TotalTime
 %tl        TimeLeft
 %ts        TotalSec
 %ct        CurrentTime
 %cs        CurrentSec
 %b         Bitrate
 %r         Rate
\e[0m
 Также можно использовать переменные из параметра файла конфигурации FormatString.
";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
  8)D;echo -en "\e[1;90m"; (E8);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Псевдоним -a для обратной совместимости
";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
  9)D;echo -en "\e[1;90m"; (E9);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Распечатайте список опций с краткими описаниями и выйдите:\e[32m
 mocp -h
\e[0m#\e[32m
 mocp --help
\e[0m";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
 10)D;echo -en "\e[1;90m";(E10);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Print a synopsis of the mocp command and exit:
\e[32m mocp --usage\e[0m
";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
 11)D;echo -en "\e[1;90m";(E11);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Print the program version and exit:\e[32m
 mocp -V
\e[0m#\e[32m
 mocp --version
\e[0m";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
 12)D;echo -en "\e[1;90m";(E12);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Распечатайте аргументы командной строки, интерпретированные POPT, и выйдите.
";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
 13)D;echo -en "\e[1;90m";(E13);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Отрегулируйте громкость микшера.
 Вы можете установить (-v 50) или настроить (-v +10, -v -10)
";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
 14)D;echo -en "\e[1;90m";(E14);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
 15)D;echo -en "\e[1;90m";(E15);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
 16)D;echo -en "\e[1;90m";(E16);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 За ними следует список идентификаторов, которые будут управлять параметрами
 списка воспроизведения MOC. Допустимые идентификаторы:
 перемешивание, повтор и   автоматическое продолжение.
 shuffle,       repeat and autonext
 Их можно сократить до «s», «r» и «n» соответственно.
 И идентификаторы, и краткие формы не чувствительны к регистру.
 Example:\e[32m -t shuffle,R,n\e[0m
 будет переключать перемешивание, повтор и автоследующее одновременно.
";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
 17)D;echo -en "\e[1;90m";(E17);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Перейти к некоторой позиции в текущем файле.
 N — это количество секунд (если за ним следует «s»)
 или процент общего времени файла (если за ним следует «%»).
 Examples:\e[32m -j 10s, -j 50%\e[0m
";echo -en "\e[1;90m ENTER = main menu ";read;INI;fi;;
 18)D;echo -en "\e[1;90m";(E18);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;fmMocp;fi;;
esac;C;done
}
#===================================================================================================
fmMocp()
{
#!/bin/bash
 trap 'echo -en "\ec"; stty sane; exit' SIGINT
 aa=0
 A(){ for b in $(seq 0 16);do E${b};done; }
 B()
{
  local c
  IFS= read -s -n1 c 2>/dev/null >&2
  if [[ $c = $(echo -en "\e") ]]; then
    read -s -n1 c 2>/dev/null >&2
    if [[ $c = \[ ]]; then
      read -s -n1 c 2>/dev/null >&2
      case $c in
        A) echo d ;;
        B) echo e ;;
        C) echo f ;;
        D) echo g ;;
      esac
    fi
  elif [[ "$c" == "$(echo -en \\x0A)" ]]; then
    echo enter
  fi
}
 C()
{
 if [[ $i == d ]];then ((aa--));fi
 if [[ $i == e ]];then ((aa++));fi
 if [[ $aa -lt 0  ]];then aa=16;fi
 if [[ $aa -gt 16 ]];then aa=0;fi;
}

 D()
{
 j1=$((aa+1)); k1=$((aa-1))
 if [[ $k1 -lt 0   ]];then k1=16;fi
 if [[ $j1 -gt 16 ]];then j1=0;fi
 if [[ $aa -lt $aa ]];then echo -en "\e[0m";E$k1;else echo -en "\e[0m";E$j1;fi
 if [[ $j1 -eq 0   ]] || [ $k1 -eq 16 ];then
 echo -en "\e[0m" ; E$k1; E$j1;fi;echo -en "\e[0m";E$k1;E$j1;
}
 TXa()
{
 for (( a=2; a<=26; a++ ))
  do
   echo -e "\e[${a};1H\e[47;30m│\e[0m                                                                                \e[47;30m│\e[0m"
  done
 echo -en "\e[1;1H\e[0m\e[47;30m┌────────────────────────────────────────────────────────────────────────────────┐\e[0m";
 echo -en "\e[3;3H\e[1m *** MOC ***\e[0m";
 echo -en "\e[4;1H\e[47;30m├\e[0m────────────────────────────────────────────────────────────────────────────────\e[0m\e[47;30m┤\e[0m";
 echo -en "\e[5;3H\e[2m Console audio player\e[0m";
 echo -en "\e[6;1H\e[47;30m├\e[0m────────────────────────────────────────────────────────────────────────────────\e[0m\e[47;30m┤\e[0m";
 echo -en "\e[22;1H\e[47;30m├\e[0m────────────────────────────────────────────────────────────────────────────────\e[0m\e[47;30m┤\e[0m";
 echo -en "\e[24;1H\e[47;30m├\e[0m─ \xE2\x86\x91 Up ───── \xE2\x86\x93 Down ──── \xe2\x86\xb2 Select Enter ────────────────────────────────────────\e[0m\e[47;30m┤\e[0m";
 echo -en "\e[27;1H\e[0m\033[47;30m└────────────────────────────────────────────────────────────────────────────────┘\e[0m";
}
  E0(){ echo -en "\e[7;3H Установка                                                          \e[32m INSTALL \e[0m";}

  E1(){ echo -en "\e[8;3H Kраткий обзор                                                     \e[32m SYNOPSIS \e[0m";}
  E2(){ echo -en "\e[9;3H Описание                                                       \e[32m DESCRIPTION \e[0m";}
  E3(){ echo -en "\e[10;3H Переменные среды                                     \e[32m ENVIRONMENT VARIABLES \e[0m";}
  E4(){ echo -en "\e[11;3H Ошибки                                                                \e[32m BUGS \e[0m";}
  E5(){ echo -en "\e[12;3H                                                                   \e[32m HOMEPAGE \e[0m";}
  E6(){ echo -en "\e[13;3H                                                                     \e[32m AUTHOR \e[0m";}
  E7(){ echo -en "\e[14;3H Использование POPT-Псевдонимов                          \e[32m USING POPT ALIASES \e[0m";}
  E8(){ echo -en "\e[15;3H                                                              \e[36m OPTIONS A - C \e[0m";}
  E9(){ echo -en "\e[16;3H                                                              \e[36m OPTIONS C - X \e[0m";}
 E10(){ echo -en "\e[17;3H                                                                    \e[32m HOTKEYS \e[0m";}
 E11(){ echo -en "\e[18;3H                                                                      \e[32m FILES \e[0m";}
 E12(){ echo -en "\e[19;3H Настройка конфигурационного файла                            \e[32m ~/.moc/config \e[0m";}
 E13(){ echo -en "\e[20;3H Значения параметров файлов                           \e[32m /usr/share/moc/themes \e[0m";}
 E14(){ echo -en "\e[21;3H Цвета оформления                                                    \e[32m Colors \e[0m";}
 E15(){ echo -en "\e[23;3H                                                                        \e[36m Git \e[0m";}
 E16(){ echo -en "\e[25;3H                                                                        Exit ";}
 INI(){ echo -en "\ec" ;stty sane;TXa;A; };INI
 while [[ "$l1" != " " ]]; do case $aa in
  0)D;echo -en "\e[47;30m"; (E0);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "\e[32m
 sudo apt-get install moc
\e[0m";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
  1)D;echo -en "\e[47;30m"; (E1);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "\e[32m
 mocp [OPTIONS] [FILE|DIR ...]
\e[0m";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
  2)D;echo -en "\e[47;30m"; (E2);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 MOC — консольный аудиоплеер с простым интерфейсом ncurses. Он поддерживает OGG,
 WAV, MP3 и другие форматы. Просто запустите mocp, перейдите в какой-нибудь каталог
 с помощью меню и нажмите Enter, чтобы начать воспроизведение файла. Программа
 автоматически воспроизведет остальные файлы в каталоге. Без параметров и файловых
 аргументов программа начинается в текущем каталоге или в MusicDir, если в файле
 конфигурации установлен параметр StartInMusicDir. Если вы укажете каталог в
 командной строке, MOC попытается попасть туда. Если задан плейлист, то он
 загружается. При наличии нескольких файлов, списков воспроизведения или каталогов
 все будет добавлено в список воспроизведения рекурсивно (включая содержимое любого
 заданного списка воспроизведения). (Обратите внимание, что относительные пути в
 списках воспроизведения разрешаются относительно каталога списка воспроизведения
 или символической ссылки, используемой для ссылки на него.)
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
  3)D;echo -en "\e[47;30m"; (E3);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Следующие переменные среды используются непосредственно MOC.
 Дополнительные переменные могут иметь отношение к библиотекам, которые использует
 MOC. Кроме того, любая переменная среды среды может быть заменена значением
 параметра файла конфигурации (подробности см. в файле config.example).
\e[32m ESCDELAY\e[0m Переменная ncurses(3X), определяющая задержку (в миллисекундах), после
 которой ESC будет рассматриваться как отдельная клавиша, а не как часть
 экранированной последовательности символов (например, создаваемой функциональными
 клавишами). MOC по умолчанию устанавливает это значение равным 25 мс,
 чего достаточно для большинства систем.
\e[32m HOME\e[0m Сообщает MOC, где находится ваш домашний каталог, и
 используется для различных целей, включая расположение каталога MOC по умолчанию.
\e[32m MOCP_OPTS\e[0m Значение этой переменной будет добавлено к параметрам командной строки
 перед их обработкой.
\e[32m MOCP_POPTRC\e[0m Список файлов конфигурации POPT, разделенных двоеточиями, которые
 будут последовательно загружаться MOC во время инициализации. Если переменная не
 установлена, будет использоваться файл конфигурации POPT по умолчанию.
 Если переменная установлена, но пуста, файл конфигурации POPT не будет загружен.
 Если переменная установлена, то будут загружены те файлы, которые существуют,
 а те, которые нет, будут пропущены. Поскольку в этих файлах могут указываться
 команды, вызывающие другие приложения, MOC откажется запускаться, если они не
 принадлежат пользователю root или текущему пользователю
 или если они доступны для записи кому-либо, кроме их владельца.
\e[32m TERM\e[0m and\e[32m WINDOW\e[0m Используется MOC для различения X-терминалов,\e[2m screen\e[0m
 и консольных терминалов. MOC использует параметры файла конфигурации
 XTerms и ScreenTerms, чтобы помочь сделать это определение.
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
  4)D;echo -en "\e[47;30m"; (E4);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Параметры командной строки, влияющие на поведение сервера
 (например, --sound-driver), игнорируются, если сервер уже запущен
 во время выполнения mocp. Пользователь об этом не предупреждается.
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
  5)D;echo -en "\e[47;30m"; (E5);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
\e[36m http://moc.daper.net/\e[0m
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
  6)D;echo -en "\e[47;30m"; (E6);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Damian Pietras:   \e[36m daper@daper.net\e[0m
 MOC Maintainer(s):\e[36m mocmaint@daper.net\e[0m
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
  7)D;echo -en "\e[47;30m"; (E7);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 MOC использует библиотеку POPT для обработки командной строки.
 Это позволяет пользователям назначать параметры и аргументы MOC псевдониму
 по своему выбору. Псевдонимы представляют собой просто строки в текстовом файле
\e[32m ~/.popt\e[0m и имеют общий вид:
\e[32m mocp alias newoption expansion\e[0m
 Это работает так, как если бы расширение текстово заменяло newoption в командной
 строке. Замена рекурсивная; то есть в расширение могут быть встроены и другие новые
 опции. Расширение анализируется аналогично команде оболочки, которая позволяет
 использовать \e[32m\\ \e[0m, \e[32m'\e[0m и \e[32m\"\e[0m для цитирования. Если обратная косая черта является
 последним символом в строке, предполагается, что следующая строка в файле является
 логическим продолжением строки, содержащей обратную косую черту, как и в оболочке.
 Параметр newoption может быть коротким или длинным, а также любым синтаксически
 допустимым именем, которое пользователь желает использовать.
 Если вы добавите описание нового параметра и/или любого аргумента,
 добавив специальные параметры POPT --POPTdesc и --POPTargs,
 тогда этот параметр будет отображаться в выводе --help и --usage.
 Значением этих двух параметров являются строки вида \$\"string\".
 Так, например:
\e[32m mocp alias --single -D --set-option autonext=no \\
 --POPTdesc=\$\"Play just the file selected\"\e[0m
 позволит пользователю включить ведение журнала (-D) и переопределить настройку
 параметра AutoNext файла конфигурации, просто используя --single в качестве
 параметра команды mocp. Иногда вам может потребоваться указать значения псевдонимов
 параметров из командной строки. Если такое значение имеет только один псевдоним,
 то его просто поставить последним:\e[32m mocp alias --yours --sound-driver OSS --theme\e[0m
 при использовании вот так:\e[32m mocp --yours your_theme\e[0m
 приведет к:\e[32m mocp --sound-driver OSS --theme your_theme\e[0m
 Но объединение нескольких опций с такими значениями означает использование
 специальной конструкции\e[32m !#:+\e[0m (и осторожное цитирование):
\e[32m mocp alias -1 \"-R !#:+\" \"-T my_theme\" \"-O !#:+\"\e[0m
 при использовании вот так:\e[32m mocp -1 OSS shuffle=yes ~/my_music\e[0m
 приведет к:\e[32m mocp -R OSS -T my_theme -O shuffle=yes ~/my_music\e[0m
 Существует также запись ~/.popt, которая позволяет выполнять другую программу
 при использовании соответствующей опции. Для этого вместо псевдонима используется
 exec, а расширение — это программа, которую нужно выполнить:
\e[32m mocp exec --help /usr/bin/man 1 mocp \\
 POPTdesc=\$\"Provide the man page instead of help\"\e[0m
 Это переопределит обычный вывод MOC --help и вместо этого будет использовать
 системную программу man для отображения этой man-страницы. Обратите внимание:
 хотя ~/.popt (или /etc/popt) является файлом конфигурации POPT по умолчанию,
 вы можете указать конкретные файлы, которые будут использоваться вместо них,
 через переменную среды MOCP_POPTRC.
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
  8)D;echo -en "\e[47;30m"; (E8);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;fnMocpOptionAC;echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
  9)D;echo -en "\e[47;30m"; (E9);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;fnMocpOptionCX;echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 10)D;echo -en "\e[47;30m";(E10);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Основные горячие клавиши MOCP:
\e[32m A      \e[0m (файловая панель) — добавить каталог или файл в плейлист;
\e[32m B      \e[0m — предыдущий трек
\e[32m D      \e[0m (playlist) — удалить песню из плейлиста;
\e[32m H      \e[0m — показать все горячие клавиши плеера;
\e[32m N      \e[0m — следующий трек
\e[32m S      \e[0m - остановить воспроизведение
\e[32m P      \e[0m — пауза;
\e[32m Q      \e[0m — выйти и завершить работу проигрывателя
\e[32m Tab    \e[0m — переход между файловой панелью и плейлистом;
\e[32m ↑, ↓,  \e[0m
\e[32m PgUp/PgDn\e[0m
\e[32m Home/End\e[0m — переходят в плейлист или каталожное дерево соответственно;
\e[32m Enter  \e[0m — играть текущий состав;
\e[32m Shift+A\e[0m — добавить каталог в плейлист с подкаталогами и их содержимым (рекурсивно);
\e[32m Shift+C\e[0m — удалить весь контент плейлиста
\e[32m Shift+Q\e[0m — выход с остановкой игры.
\e[32m Shift+R\e[0m - включить/выключить повтор плейлиста
\e[32m Shift+S\e[0m - включить/выключить воспроизведение в случайном порядке (Shuffle)
\e[32m Shift+T\e[0m - Выбрать тему. Либо задать дефолтной в конфиге.
\e[32m Shift+<\e[0m - уменьшить громкость на 1%
\e[32m Shift+>\e[0m - увеличить громкость на 1%
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 11)D;echo -en "\e[47;30m";(E11);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
\e[32m ~/.moc\e[0m
 Каталог MOC для файла конфигурации, сокета, файла pid и других данных.

\e[32m ~/.moc/config\e[0m
 Конфигурационный файл для MOC.
 Формат очень простой; чтобы узнать, как его использовать, посмотрите пример файла
 конфигурации (config.example), распространяемый вместе с программой.
 Файл примера полностью описывает все параметры конфигурации и поэтому является
 полезным справочником при использовании параметра -O.
 Поскольку в этом файле могут быть указаны команды, которые вызывают другие
 приложения, MOC откажется запускаться, если он не принадлежит ни пользователю
 root, ни текущему пользователю, или если он доступен для записи кому-либо,
 кроме его владельца.

\e[32m ~/.popt\e[0m
\e[32m /etc/popt\e[0m
 Файлы по умолчанию, которые POPT читает, чтобы получить параметры с псевдонимами.
 Поскольку в этих файлах могут указываться команды, вызывающие другие приложения,
 MOC откажется запускаться, если он не принадлежит пользователю root или текущему
 пользователю или если он доступен для записи кому-либо, кроме его владельца.
 (Также см. выше переменную среды MOCP_POPTRC.)

\e[32m ~/.moc/themes\e[0m
\e[32m /usr/share/moc/themes\e[0m
 Каталоги по умолчанию для файлов темы.

\e[32m /usr/share/moc/decoder_plugins\e[0m
 Каталоги по умолчанию для плагинов аудиодекодера.

\e[32m mocp_client_log\e[0m
\e[32m mocp_server_log\e[0m
 Файлы журналов клиента и сервера. Эти файлы создаются в каталоге,
 в котором запускаются клиент и сервер. (Также см. опцию -D.)
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 12)D;echo -en "\e[47;30m";(E12);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Создайте файл конфигурации:\e[32m nano ~/.moc/config\e[0m
 Сделайте его исполняемым:\e[32m chmod 600 ~/.moc/config\e[0m
 Примеры настройки конфигурационного файла можно смотреть тут:
\e[32m /usr/share/doc/moc/examples\e[0m
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 13)D;echo -en "\e[47;30m";(E13);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Значения параметров файлов\e[32m /usr/share/moc/themes\e[0m
\e[32m Название:            \e[0m Значение:
\e[32m background:          \e[0m Задний фон интерфейса.
\e[32m frame:               \e[0m Цвет обрамления окон.
\e[32m window_title:        \e[0m Цвет заголовка окна.
\e[32m directory:           \e[0m Цвет для отображения директорий.
\e[32m selected_directory:  \e[0m Цвет для выделенной директории.
\e[32m playlist:            \e[0m Цвет для отображения элементов плейлиста.
\e[32m selected_playlist:   \e[0m Цвет для выделенного элемента плейлиста.
\e[32m file:                \e[0m Цвет для отображения файлов.
\e[32m selected_file:       \e[0m Цвет для выделенного файла.
\e[32m marked_file:         \e[0m Цвет для отображения помеченных файлов.
\e[32m marked_selected_file:\e[0m Цвет для отображения выделенных и помеченных файлов.
\e[32m info:                \e[0m Цвет для информационных сообщений.
\e[32m status:              \e[0m Цвет для статусной строки.
\e[32m title:               \e[0m Цвет для заголовков.
\e[32m state:               \e[0m Цвет для состояния.
\e[32m current_time:        \e[0m Цвет для текущего времени.
\e[32m time_left:           \e[0m Цвет для оставшегося времени.
\e[32m total_time:          \e[0m Цвет для общего времени.
\e[32m time_total_frames:   \e[0m Цвет для общего времени в кадрах.
\e[32m sound_parameters:    \e[0m Цвет для звуковых параметров.
\e[32m legend:              \e[0m Цвет для легенды.
\e[32m disabled:            \e[0m Цвет для отключенных элементов.
\e[32m enabled:             \e[0m Цвет для включенных элементов.
\e[32m empty_mixer_bar:     \e[0m Цвет для пустой полосы громкости.
\e[32m filled_mixer_bar:    \e[0m Цвет для заполненной полосы громкости.
\e[32m empty_time_bar:      \e[0m Цвет для пустой полосы времени.
\e[32m filled_time_bar:     \e[0m Цвет для заполненной полосы времени.
\e[32m entry:               \e[0m Цвет для вводимых данных.
\e[32m entry_title:         \e[0m Цвет для заголовка вводимых данных.
\e[32m error:               \e[0m Цвет для сообщений об ошибках.
\e[32m message:             \e[0m Цвет для информационных сообщений.
\e[32m plist_time:          \e[0m Цвет для времени плейлиста.
 Каждый параметр имеет три значения: цвет текста, цвет фона и стиль шрифта.
 Стиль шрифта может быть bold (жирный) или default (обычный).
 status                  = white         default
 Это означает, что статусная строка будет белой, фон будет по умолчанию,
 без изменений, и шрифт будет обычным, без выделения.
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 14)D;echo -en "\e[47;30m";(E14);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 В файле конфигурации темы MOC вы можете использовать следующие цвета:
 black
\e[31m red\e[0m
\e[32m green\e[0m
\e[33m yellow\e[0m
\e[34m blue\e[0m
\e[35m magenta\e[0m
\e[36m cyan\e[0m
 white
 default
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 15)D;echo -en "\e[47;30m";(E15);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Описание утилиты mMocp. Console audio player.
 asciinema:  \e[36m https://asciinema.org/a/655469\e[0m
 codeberg:   \e[36m https://codeberg.org/Grannik/mMocp\e[0m
 github:     \e[36m \e[0m
 gitlab:     \e[36m \e[0m
 sourceforge:\e[36m \e[0m
 notabug:    \e[36m \e[0m
 bitbucket:  \e[36m \e[0m
 gitea:      \e[36m \e[0m
 gogs:       \e[36m \e[0m
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 16)D;echo -en "\e[47;30m";(E16);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;exit 0;fi;;
esac;C;done
}
fmMocp
