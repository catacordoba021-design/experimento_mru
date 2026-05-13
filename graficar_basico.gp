set terminal png size 800,600 enhanced font "Arial,12"
set output "grafico_basico.png"

set xlabel "Tiempo (s)"
set ylabel "Posición (m)"
set title "MRU - Posición vs Tiempo"
set grid

plot "datos_mru.txt" using 1:2 with points pt 7 ps 1.5 title "Datos experimentales"
