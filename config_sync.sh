#!/bin/sh

on_err()
{
	echo "Ocorreu um erro!"; exit 1
}

echo "Sincronizando arquivos de configuração..."

mkdir -p awesomewm

cp -v ~/.config/awesome/rc.lua awesomewm/. || on_err
cp -rv ~/.config/awesome/themes awesomewm/. || on_err

mkdir -p termite

cp -v ~/.config/termite/* termite/. || on_err

echo "Arquivos de configuração sincronizados."
