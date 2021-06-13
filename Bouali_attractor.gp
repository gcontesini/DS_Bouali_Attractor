
# CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC START
reset

set terminal pngcairo 

data_pnt="ts_bouali_attractor.dat"

# CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC STATS

do for [COL=1:4] {stats data_pnt u COL name sprintf("stats_%d",COL) nooutput}

# CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 3D PLOT

set view 62.0, 160.0, 1,1
set xrange[-3:3]
set yrange[0:3]
set zrange[-0.06:0.1]
set mapping cartesian
set palette defined (1 'blue', 2 'red' )
# help border
set pm3d at b
set border 3071+2048-128 
set grid 
set output "ts_bouali_attractor.png"
# set label 1 "" at sprintf("%f %f %f",stats_2_mean, stats_3_mean, stats_4_mean) point pt 18 lw 1.
# set arrow 5 from stats_1_mean, stats_2_mean, stats_3_mean  to stats_1_mean, stats_2_min ,-3+0.01
# set label 5 at stats_1_mean, stats_2_mean, stats_3_mean-0.1 sprintf("%f",stats_2_mean) center
splot data_pnt u 2:3:4 notitle w l lc palette

reset

# CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC TS
# ----------------------------------------------------------------- X TS
set grid 
# set yrange[-30:40]
set arrow 5 from 155, stats_2_mean to 155, stats_2_min 
set label 5 at 155, stats_2_min-0.1 sprintf("%f",stats_2_mean) center
set xrange[0:200]
plot data_pnt u 1:2 notitle w l
replot stats_2_mean lt rgb "black" title "avg" 
set output "bouali_attractor_x_ts.png"
replot

reset
# ----------------------------------------------------------------- Y TS
set grid 
# set yrange[-30:30]
set arrow 5 from 170, stats_3_mean to 170, stats_3_min-0.01
set label 5 at 170, stats_3_min-0.02 sprintf("%f",stats_3_mean) center 
set xrange[0:200]
plot data_pnt u 1:3 notitle w l
replot stats_3_mean lt rgb "black"  title "avg"
set output "bouali_attractor_y_ts.png"
replot

reset
# ----------------------------------------------------------------- Z TS
set grid 
# set yrange[-5:140]
set arrow 5 from 155, stats_4_mean to 155, stats_4_max-5.4
set label 5 at 155, stats_4_max-5.5 sprintf("%f",stats_4_mean) center 
set xrange[0:200]
plot data_pnt u 1:4 notitle w l
replot stats_4_mean lt rgb "black"  title "avg"
set output "bouali_attractor_z_ts.png"
replot

reset

# CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC FIT

set grid
# set xrange[0:1]
set yrange[-14:3]
# set yrange [1e-3:1e2]
f(x) = a*x+b
fit[0:60] f(x) data_pnt u 1:5 via a,b
a               = 0.145943
b               = -12.1089
plot[1:200] data_pnt u 1:5 notitle w l
replot[0:60] f(x) lt rgb "black" lw 2 title "L_{exp} = 0.132756"
set output "bouali_attractor_lyapunov_exp.png"
replot

reset

# CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC TAKENS THEOREM

reset

takens_x_data_pnt = "takens_x_data_pnt.dat"
set grid
set view 60, 40, 1,1
set border 3071+2048-128 back
splot takens_x_data_pnt u 2:3:4 w l title "x ts" lc palette
set output "bouali_x_takens_theorem.png"
replot 

takens_y_data_pnt = "takens_y_data_pnt.dat"
set grid
set view 50, 10, 1,1
set border 3071+2048-128 back
splot takens_y_data_pnt u 2:3:4 w l title "y ts" lc palette
set output "bouali_y_takens_theorem.png"
replot 

takens_z_data_pnt = "takens_z_data_pnt.dat"
set grid
set view 55, 340, 1, 1
set border 3071+2048-128 back 
splot takens_z_data_pnt u 2:3:4 w l title "z ts" lc palette
set output "bouali_z_takens_theorem.png"

replot

# CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC MULTIPLOT

reset

set autoscale
set output "bouali_attractor_rk4.png"
set multiplot

set size 0.5, 0.5 
set origin 0, 0
set border 3071+2048-128 back
set grid 
splot data_pnt u 2:3:4 notitle w l
set origin 0, 0.5
# set xrange[0:50]
set xrange[0:100]
plot data_pnt u 1:2 w l title "x ts"
set origin 0.5, 0 
set xrange[0:100]
plot data_pnt u 1:3 w l title "y ts"
set origin 0.5, 0.5
set xrange[0:100]
plot data_pnt u 1:4 w l title "z ts"

reset
# CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC END