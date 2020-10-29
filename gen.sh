#!/bin/bash
rm -r priv/gettext
for locale in ca de en_AE en_AU en_GB en_IE en_IL en_NZ en_SG en_ZA es es_AR es_CL es_CO es_CR es_DO es_EC es_MX es_PA es_PE fr fr_BE it nl nl_BE pt pt_PT sv
do
  dir="priv/gettext/$locale/LC_MESSAGES"
  mkdir -p "$dir"

  for file in one another errors languages something
  do
    for entry in $(seq 1 900)
    do
      echo "msgid \"%{some_placeholder} - $locale $file $entry some text to be translated\"
msgstr \"%{some_placeholder} - $locale $file $entry some text translated\"
" >> "$dir/$file.po"
    done
  done
done
