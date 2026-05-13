set terminal png size 900,600 enhanced font "Arial,14"
set output "grafico_mejorado.png"

set xlabel "Tiempo (s)"
set ylabel "Posición (m)"
set title "MRU con ajuste lineal"
set grid
set key top left

f(t) = m*t + b
fit f(t) "datos_mru.txt" using 1:2 via m,b

plot "datos_mru.txt" using 1:2 with points pt 7 ps 1.5 title "Datos", \
f(t) with lines lw 3 title sprintf("x = %.2ft + %.2f (v=%.2f)", m, b, m)
