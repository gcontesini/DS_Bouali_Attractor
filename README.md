
# DS_Bouali_Attractor

Similate the Bouali Attractor, [insert theory and background bibliography here]


System Differential Equation ( dimensionless )

$\frac{dx}{dt} = \alpha \cdot (1 - y )\cdotx - \beta \cdot z$

$\frac{dy}{dt} = -1.0 \cdot (1-x^{2})\cdot y$

$\frac{dz}{dt} = \mu \cdot x$


## Parameters

$\alpha = 3.0$
$\beta = 2.2$
$\mu = 0.001$

## Method

Simpletic Runge-Kutta of 4 order

### Global Conditions

time_step = 0.01

### Initial Conditions

$x_0 = 1$
$y_0 = 1$
$z_0 = 0$

for the Lyapunov calculation a $\delta=1e^{-6}$ was add to the original IC.

## Results 

![original Bouali attractor](https://github.com/gcontesini/DS_Bouali_Attractor/blob/master/ts_bouali_attractor.png)

![x time series](https://github.com/gcontesini/DS_Bouali_Attractor/blob/master/bouali_attractor_x_ts.png)

![y time series](https://github.com/gcontesini/DS_Bouali_Attractor/blob/master/bouali_attractor_y_ts.png)

![z time series](https://github.com/gcontesini/DS_Bouali_Attractor/blob/master/bouali_attractor_z_ts.png)

**WRONG** don't just blindly copy and paste

![Lyapunov Exponent](https://github.com/gcontesini/DS_Bouali_Attractor/blob/master/bouali_attractor_lyapunov_exp.png)

**WRONG** don't just blindly copy and paste

With a lyapunov exponent of $a nº$ and a Lyapunov time of $ $, after 
60 interactions delta becames stochastic.[note that de plot is on a y-semi-logscale]

## Stability Points

**WRONG** don't just blindly copy and paste

<!-- The Stability points can be achieve by open the circuit -->

<!-- $i^{\star}(x)= -x\cdot(\frac{\epsilon}{(\beta+\epsilon)}+b)$ -->

<!-- When the circuit is open, the current -->
<!-- First Stable Points$x=1.1686\hspace{0.25cm}  y=0.0096\hspace{0.25cm}  z=-1.1589$ -->

<!-- $x=-1.1686\hspace{0.25cm}  y=-0.0096\hspace{0.25cm}  z=1.1589$ -->

![First Stable Point](https://github.com/gcontesini/DS_Bouali_Attractor/blob/master/ts_Bouali_attractor_SSP.png)

![Second Stable Point](https://github.com/gcontesini/DS_Bouali_Attractor/blob/master/ts_Bouali_attractor_FSP.png)

**WRONG** don't just blindly copy and paste

## Taken's Theorem

Reconstruction of the Lorenz attractor based on taken's theorem

The lag was no optimized so these plots can have way more information.

That is much more one can extract from Taken's Theorem, but I'm lazy go read some classical dynamical system papers.

**WRONG** don't just blindly copy and paste

![only x time series](https://github.com/gcontesini/DS_Bouali_Attractor/blob/master/bouali_x_takens_theorem.png)

![only y time series](https://github.com/gcontesini/DS_Bouali_Attractor/blob/master/bouali_y_takens_theorem.png)

![only z time series](https://github.com/gcontesini/DS_Bouali_Attractor/blob/master/bouali_z_takens_theorem.png)

**WRONG** don't just blindly copy and paste

## Reference

The usual

