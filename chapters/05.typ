#import "@preview/physica:0.9.8": *
#import "../helpers.typ": anticommute, bidir, commute, conjugate

= The LSZ Reduction Formula

#v(0.5em)

We will start constructing the appropriate initial and final states for scattering experiments. Recall the one particle creation state is given by
$
  ket(k) & = conjugate(a)(vb(k)) ket(0) comma
$
where
$
  conjugate(a)(vb(k)) & = - i integral dd(x, 3) e^(i k x) bidir(tensor(partial, -0)) phi(x)"."
$
The vacuum state is annihilated by $a(vb(k))$,
$
  a(vb(k)) ket(0) & = 0 comma
$
and has unit norm,
$
  braket(0) & = 1"."
$
The normalization of one particle state is then
$
  braket(k, k') & = braket(0, a(vb(k)) conjugate(a)(vb(k)'), 0) \
                & = braket(0, commute(a(vb(k)), conjugate(a)(vb(k)')), 0) + braket(0, conjugate(a)(vb(k)') a(vb(k)), 0) \
                & = (2 pi)^3 2 omega var((vb(k) - vb(k)'))"."
$

Define a particle creator operator in momentum space near $vb(k)_1$ and localized in position space near the origin
$
  conjugate(a)_1 equiv integral dd(k, 3) f_(1)(vb(k)) conjugate(a)(vb(k)) comma \
  f_(1)(vb(k)) prop exp(- frac((vb(k) - vb(k)_1)^2, 4 sigma^2))"."
$
Now consider a one particle creation state using that operator.
$
  conjugate(a)_1 ket(0) = integral dd(k, 3) f_(1)(vb(k)) conjugate(a)(vb(k)) ket(0) comma
$
time-evolving this state ket in Schrodinger picture,
$
  cal(U)(t) conjugate(a)_1 ket(0) & = cal(U)(t) integral dd(k, 3) f_(1)(vb(k)) conjugate(a)(vb(k)) ket(0) \
  & = e^(- i H_0 t) integral dd(k, 3) f_(1)(vb(k)) conjugate(a)(vb(k)) ket(0) \
  & = integral dd(k, 3) f_(1)(vb(k)) e^(-i H_0 t) conjugate(a)(vb(k)) ket(0) \
  & = integral dd(k, 3) f_(1)(vb(k)) (1 - i H_0 t - 1/2 H_0^2 t^2 + i/6 H_0^3 t^3 + dots) conjugate(a)(vb(k)) ket(0) \
  & = integral dd(k, 3) f_(1)(vb(k)) (1 - i omega t - 1/2 omega^2 t^2 + i/6 omega^3 t^3 + dots) conjugate(a)(vb(k)) ket(0) \
  & = integral dd(k, 3) f_(1)(vb(k)) e^(-i omega t) conjugate(a)(vb(k)) ket(0)"."
$
It shows that the wave packet propagate. The particle is then located at $t arrow plus.minus infinity$ (far from the origin). For the state of two or more particles, they are also placed afar from each other.

Now that the particle creation operator is time dependent, the initial and final state of a particle scattering are written as
$
  ket(i) & = lim_(t arrow - infinity) conjugate(a)_(1)(t) conjugate(a)_(2)(t) ket(0) comma \
  ket(f) & = lim_(t arrow + infinity) conjugate(a)_(1')(t) conjugate(a)_(2')(t) ket(0) comma
$
where they follow state normalization $braket(i) = braket(f) = 1$. The scattering amplitude is defined as $braket(f, i)$. Before we examine the full expression for the amplitude, let us find an expression that could be useful.
$
  conjugate(a)_(1)(+ infinity) - conjugate(a)_(1)(- infinity)"."
$
If we apply both fundamental theorems of calculus,
$
  integral_(- infinity)^(+ infinity) dd(t) tensor(partial, -0) conjugate(a)_(1)(t) & = conjugate(a)_(1)(+ infinity) - conjugate(a)_(1)(- infinity) \
  & = integral_(- infinity)^(+ infinity) dd(t) dd(k, 3) f_(1)(vb(k)) tensor(partial, -0) conjugate(a)(vb(k)) \
  & = integral dd(x, 4) dd(k, 3) f_(1)(vb(k)) tensor(partial, -0) (e^(i k x) [-i tensor(partial, -0) phi(x) + omega phi(x)]) \
  & = integral dd(x, 4) dd(k, 3) f_(1)(vb(k)) (tensor(partial, -0) e^(i k x)) [-i tensor(partial, -0) phi(x) + omega phi(x)] \
  & wide wide + e^(i k x) [-i tensor(partial, -0)^2 phi(x) + omega tensor(partial, -0) phi(x)] \
  & = integral dd(x, 4) dd(k, 3) f_(1)(vb(k)) (- i omega e^(i k x)) [-i tensor(partial, -0) phi(x) + omega phi(x)] \
  & wide wide + e^(i k x) [-i tensor(partial, -0)^2 phi(x) + omega tensor(partial, -0) phi(x)] \
  & = - i integral dd(x, 4) dd(k, 3) f_(1)(vb(k)) e^(i k x) (partial_0^2 + omega^2) phi(x) \
  & = - i integral dd(x, 4) dd(k, 3) f_(1)(vb(k)) e^(i k x) (partial_0^2 + vb(k)^2 + m^2) phi(x) \
  & = -i integral dd(x, 4) dd(k, 3) f_(1)(vb(k)) [e^(i k x) (partial_0^2 + m^2) phi(x) \ & wide wide + vb(k)^2 e^(i k x) phi(x)] \
  & = -i integral dd(x, 4) dd(k, 3) f_(1)(vb(k)) [e^(i k x) (partial_0^2 - m^2) phi(x) \ & wide wide - laplacian(e^(i k x)) phi(x)] comma
$
the last term could be substituted using partial integration method such as,
$
  integral dd(x, 3) laplacian(e^(i k x)) phi(x) & = integral dd(x, 3) laplacian(e^(i k x) phi(x)) - integral dd(x, 3) e^(i k x) laplacian phi(x) \
  & = integral dd(x, 3) e^(i k x) laplacian phi(x) comma
$
using the fact that Gauss divergence theorem turns the laplacian volume integral into surface integral and that we need the surface terms to be 0.
$
  conjugate(a)_(1)(+ infinity) - conjugate(a)_(1)(- infinity) & = - i integral dd(x, 4) dd(k, 3) f_(1)(vb(k)) e^(i k x) (partial_0^2 - laplacian + m^2) phi(x) \
  & = - i integral dd(x, 4) dd(k, 3) f_(1)(vb(k)) e^(i k x) (- tensor(partial, mu) tensor(partial, -mu) + m^2) phi(x) \
  & = - i integral dd(k, 3) f_(1)(vb(k)) integral dd(x, 4) e^(i k x) (- partial^2 + m^2) phi(x)"."
$
Rearranging for $conjugate(a)_(1)(- infinity)$, we have
$
  conjugate(a)_(1)(- infinity) & = conjugate(a)_(1)(+ infinity) + i integral dd(k, 3) f_(1)(vb(k)) integral dd(x, 4) e^(i k x) (- partial^2 + m^2) phi(x) comma \
  a_(1)(+ infinity) & = a_(1)(- infinity) + i integral dd(k, 3) f_(1)(vb(k)) integral dd(x, 4) e^(- i k x) (- partial^2 + m^2) phi(x) "."
$
Let us go back to the two particles scattering amplitude using initial and final states that we have defined.
$
  braket(f, i) & = braket(0, a_(1')(infinity)a_(2')(infinity) conjugate(a)_(1)(- infinity) conjugate(a)_(2)(- infinity), 0) \
  & = braket(0, T a_(1')(infinity)a_(2')(infinity) conjugate(a)_(1)(- infinity) conjugate(a)_(2)(- infinity), 0)"."
$
If we substitute the particle creation and annihilation operators with the expression that we have derived before, the time operator would move the annihilation operators to the right and creation operators to the left (because the time switched from $infinity arrow.l.r - infinity$). Using the fact that $bra(0) conjugate(a) = a ket(0) = 0$, the remaining terms of the scattering amplitude are now the terms without the operators.
$
  lim_(sigma arrow 0) f_i(vb(k)) prop delta(vb(k) - vb(k)_1) comma
$
$
  braket(f, i) & = i^4 integral dd(x_1, 4) dots dd(x'_2, 4) e^(i k_1 x_1) (- partial^2_1 + m^2) dots e^(i k'_2 x'_2) (- partial^2_(2') + m^2) \
  & wide wide times braket(0, T phi(x_1) phi(x_2) phi(x_(1')) phi(x_(2')), 0) comma
$
or we can generalize it for $n$ initial particles and $n'$ final particles.
$
  braket(f, i) & = i^(n + n') integral dd(x_1, 4) dots dd(x'_n, 4) e^(i k_1 x_1) (- partial^2_1 + m^2) dots e^(i k'_n x'_n) (- partial^2_(n') + m^2) \
  & wide wide times braket(0, T phi(x_1) dots phi(x_(n')), 0)"."
$
This equation is called the *Lehmann-Symanzik-Zimmermann* reduction formula or LSZ formula for short. This derivation relied on the usage of *free* field creation and annihilation operators. Would it still work in the interacting theory? Let us examine the energy-momentum eigenstates of interacting theory. For one particle:
$
  E_1^2 = omega_1^2 = vb(k)_1^2 + m^(2)"."
$
For two particles:
$
  tensor((k_1 + k_2), mu) tensor((k_1 + k_2), -mu) & = k_1 k_1 + k_1 k_2 + k_2 k_1 + k_2 k_2 \
  - (omega_1 + omega_2)^2 + (vb(k)_1 + vb(k)_2)^2 & = - m_1^2 - m_2^2 + 2 (vb(k_1) dprod vb(k)_2 - omega_1 omega_2) comma
$
for the case of zero total momentum, we then have $vb(k)_1 = - vb(k_2)$. Assuming that the particles have identical masses (thus $omega_1$ is also equal to $omega_2$),
$
    - (omega_1 + omega_2)^2 & = - 2 m^2 - 2 (vb(k)_1^2 + omega_1^2) \
    - (omega_1 + omega_2)^2 & = - 2 m^2 - 2 (2 vb(k)_1^2 + m^2) \
  E_2 = (omega_1 + omega_2) & = sqrt(4m^2 + 4 vb(k)_1^2)"."
$
So, for the state of two particles, the eigenvalue has a minimum value of $+ 2 m$, that is the case when both particle do not have individual momentums.

Let us go back to the relativistic generalization of Heisenberg equation.
$
  phi(x) = e^(-i tensor(P, mu) tensor(x, -mu)) phi(0) e^(+ i tensor(P, mu) tensor(x, -mu))"."
$
What would happen if we sandwich the time-evolved field with ground states?
$
  braket(0, phi(x), 0) & = braket(0, e^(-i tensor(P, mu) tensor(x, -mu)) phi(0) e^(+ i tensor(P, mu) tensor(x, -mu)), 0) \
                       & = braket(0, (1 + F(P x)) phi(0) (1 + G(P x)), 0) comma
$
using $tensor(P, mu) ket(0) = bra(0) tensor(P, mu) = 0$,
$
  braket(0, phi(x), 0) & = braket(0, phi(0), 0) equiv v"."
$
Let multiply the $conjugate(a)_(1)(- infinity)$ expression that we have derived before with ket of the ground state.
$
  conjugate(a)_(1)(- infinity) ket(0) & = conjugate(a)_(1)(+ infinity) ket(0) + i integral dd(x, 4) e^(i k_1 x) (- partial^2 + m^2) phi(x) ket(0) \
  & = conjugate(a)_(1)(+ infinity) ket(0) + i integral dd(x, 4) e^(i k_1 x) (- partial^2 + m^2) v ket(0)"."
$
From this equation, we would like that $v$ is equal to 0 so that the creation operator acting on the ground state would create only a single particle state and not the linear combination of a single particle state.

Let us consider another state with one-particle state with momentum denoted as $ket(p)$.
$
  braket(p, phi(x), 0) & = braket(p, e^(-i tensor(P, mu) tensor(x, -mu)) phi(0) e^(+ i tensor(P, mu) tensor(x, -mu)), 0) \
  & = braket(p, (1 + F(P x)) phi(0) (1 + G(P x)), 0) \
  & = braket(p, e^(-i p x) phi(0), 0) \
  & = e^(-i p x) braket(p, phi(0), 0) comma
$
where $braket(p, phi(0), 0)$ is a Lorentz invariant value. Now that $braket(p, phi(0), 0)$ is a function of $p$, the only fitting possibility is that it is a function of $p^2$ since it is Lorentz invariant (also equal to $-m^2$). We set that $braket(p, phi(0), 0) = 1$. This is so that the one particle state is normalized.

Finally we examine the state of $ket(p comma n)$ which is the multiparticle state with $n$ for other labels such as relative momenta.
$
  braket(p comma n, phi(x), 0) & = braket(p comma n, e^(-i tensor(P, mu) tensor(x, -mu)) phi(0) e^(+ i tensor(P, mu)), 0) \
  & = e^(-i p x) braket(p comma n, phi(0), 0)
$
Before we decide what type of value should this state have, let us test the one particle state with a normalizable state.
$
  ket(psi) = sum_n integral dd(p, 3) phi_(n)(x) ket(p comma n)"."
$
Now let us examine
$
  braket(psi, conjugate(a)_(1)(t), 0) & = -i sum_n integral dd(p, 3) psi_n^*(vb(p)) integral dd(k, 3) f_(1)(vb(k)) integral dd(x, 3) e^(i k x) bidir(partial_0) braket(p comma n, phi(x), 0) \
  & = - i sum_n integral dd(p, 3) psi_n^*(vb(p)) integral dd(k, 3) f_(1)(vb(k)) integral dd(x, 3) e^(i k x) bidir(partial_0) braket(p comma n, phi(0), 0) \
  & = - i sum_n integral dd(p, 3) psi_n^*(vb(p)) integral dd(k, 3) f_(1)(vb(k)) integral dd(x, 3) (e^(i k x) bidir(partial_0) e^(-i p x)) A_(n)(vb(p)) \
  & = sum_n integral dd(p, 3) psi_n^*(vb(p)) integral dd(k, 3) f_(1)(vb(k)) integral dd(x, 3) (tensor(p, 0) + tensor(k, 0)) e^(i (k - p) x) A_(n)(vb(p)) \
  & = sum_n integral dd(p, 3) psi_n^*(vb(p)) integral dd(k, 3) f_(1)(vb(k)) integral dd(x, 3) (tensor(p, 0) + tensor(k, 0)) e^(i (vb(k) - vb(p)) dprod vb(x)) e^(i (p_0 - k_0) t) A_(n)(vb(p)) \
  & = sum_n integral dd(p, 3) psi_n^*(vb(p)) integral dd(k, 3) f_(1)(vb(k)) (2 pi)^3 delta(vb(k) - vb(p)) (tensor(p, 0) + tensor(k, 0)) e^(i (p_0 - k_0) t) A_(n)(vb(p)) \
  & = sum_n integral dd(p, 3) (2 pi)^3 (tensor(p, 0) + tensor(k, 0)) A_(n)(vb(p)) psi_n^*(vb(p)) f_(1)(vb(p)) e^(i (p_0 - k_0) t)
$
We see that $tensor(p, 0)$ is greater than $k_0$ by definition. When we take the limit $t arrow plus.minus infinity$, we see that it oscillates rapidly. Using the Riemann-Lebesgue lemma, the rapid oscillation then vanishes.