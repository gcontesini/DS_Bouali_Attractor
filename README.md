
# DS_Bouali_Attractor

Similate the Bouali Attractor, [insert theory and background bibliography here]


System Differential Equation ( dimensionless )

$\frac{d}{dt}x = \alpha[ y - x(b+1) - f(x)]$

$\frac{d}{dt}y = x-y+z$

$\frac{d}{dt}z = -\beta y+\epsilon z$

and  input current $f(x)$

$f(x)=a \tanh(\phi x)$

## Parameters

$a= -0.428$
$b= -0.614$
$\phi = 2.0$
$\alpha = 9.0$
$\beta = 15.0$
$\epsilon = 0.125$

## Method

Simpletic Runge-Kutta of 4 order

### Global Conditions

time_step = 0.01

### Initial Conditions

$x_0 = 0.15$
$y_0 = 0.15$
$z_0 = 0.15$

for the Lyapunov calculation a $\delta=1e^{-6}$ was add to the original IC.

## Results 

![original Bouali attractor](url here)

![x time series](url here)

![y time series](url here)

![z time series](url here)

![Lyapunov Exponent](url here)

With a lyapunov exponent of $0.132756$ and a Lyapunov time of $ $, after 
60 interactions delta becames stochastic.[note that de plot is on a y-semi-logscale]

## Stability Points

The Stability points can be achieve by open the circuit

$i^{\star}(x)= -x\cdot(\frac{\epsilon}{(\beta+\epsilon)}+b)$

When the circuit is open, the current
First Stable Points$x=1.1686\hspace{0.25cm}  y=0.0096\hspace{0.25cm}  z=-1.1589$

$x=-1.1686\hspace{0.25cm}  y=-0.0096\hspace{0.25cm}  z=1.1589$

![First Stable Point](url)

![Second Stable Point](url)

## Taken's Theorem

Reconstruction of the Lorenz attractor based on taken's theorem

The lag was no optimized so these plots can have way more information.

This is black magic for sure! That is much more one can extract from Taken's Theorem, but I'm lazy go read some classical dynamical system papers.

![only x time series](url)

![only y time series](url)

![only z time series](url)

## Reference


