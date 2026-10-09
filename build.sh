#!/bin/sh
# Genera index.html (sitio web) a partir de src/app.html
cd "$(dirname "$0")"
{
  printf '%s\n' '<!doctype html>' '<html lang="es">' '<head>' '<meta charset="utf-8">' '<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">' '<meta name="description" content="Juegos de trading con mercados reales: predice el precio en vivo, reto diario, vence al mono, sobrevive crisis y prueba el apalancamiento. Sin plata real.">' '<meta property="og:title" content="Sube/Baja · Entrena trading con mercados reales">' '<meta property="og:description" content="Predice cripto en vivo, reto diario y simulador de liquidación. Gratis y sin plata real.">' '<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}img{max-width:100%}</style>' '</head>' '<body>'
  sed 's|https://unpkg.com/lightweight-charts@4.1.3/dist/lightweight-charts.standalone.production.js|vendor/lightweight-charts.js|' src/app.html
  printf '%s\n' '</body>' '</html>'
} > index.html
echo "index.html listo"
