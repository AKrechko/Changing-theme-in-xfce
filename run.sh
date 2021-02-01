#!/bin/bash
while true; do
        get_theme=$(xfconf-query -c xsettings -p /Net/ThemeName)
        get_time=$(date +%k)

        if [ $get_time -gt 7 ] && [ $get_time -lt 18 ]; then
                if [ $get_theme == "Adwaita-dark" ]; then #Установим светлую тему с 8 до 17ч
                        xfconf-query -c xsettings -p /Net/ThemeName -s Adwaita
                fi
        else # в другое время
                if [ $get_theme == "Adwaita" ]; then #Установим темную тему
                        xfconf-query -c xsettings -p /Net/ThemeName -s Adwaita-dark
                fi
        fi

        sleep 60
done
