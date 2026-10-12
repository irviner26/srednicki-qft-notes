#import "@preview/physica:0.9.8": *
#import "../helpers.typ": anticommute, commute, conjugate, lorentzmatrix, stateket

= Attempts on Relativistic QM

In the case of *special relativity*, physics looks the same on every inertial frames. The spacetime coordinate (contravariant) is introduced as:
$ x^mu = (x^0, x^1, x^2, x^3) = (c t, vb(x))"." $
Minkowski metric, also known as flat spacetime tensor metric, is defined as:
$
  g_(mu nu) = g^(mu nu) = mat(
    -1, 0, 0, 0;
    0, 1, 0, 0;
    0, 0, 1, 0;
    0, 0, 0, 1;
  )"."
$
So, the covariant form of the spacetime coordinate is just $x_mu = g_(mu nu) x^nu$. Another important property of the tensor metric is:
$ g^(mu nu) g_(nu rho) = delta^(mu)_(nu) $
which is just the delta Kronecker function.

Lorentz transformation is defined by these sets of equations.
$
  c macron(t) & = gamma c t - gamma beta x"," \
    macron(x) & = -gamma beta c t + gamma x"," \
    macron(y) & = y"," \
    macron(z) & = z"."
$
Then we can define Lorentz matrix as:
$
  lorentzmatrix(mu, nu) = mat(
    gamma, -gamma beta, 0, 0;
    -gamma beta, gamma, 0, 0;
    0, 0, 1, 0;
    0, 0, 0, 1
  )"."
$
Now, one can relate a transformation for the spacetime coordinate can be written as:
$
  macron(x)^mu = lorentzmatrix(mu, nu) x^nu + a^mu","
$
where $a^mu$ is just a constant translation vector. Lorentz transformation matrix must obey this equation:
$
  g_(mu nu) lorentzmatrix(mu, rho) lorentzmatrix(nu, sigma) = g_(rho sigma)","
$
which is straightforward to prove by contracting the indices $mu$ and $nu$, we are then left with $(- lorentzmatrix(0, rho) lorentzmatrix(0, sigma) + lorentzmatrix(1, rho) lorentzmatrix(1, sigma) + lorentzmatrix(2, rho) lorentzmatrix(2, sigma) + lorentzmatrix(3, rho) lorentzmatrix(3, sigma))$ which we can set as an unknown $4 times 4$ matrix. If we solve for each matrix element, we will get that the matrix is equal to the tensor metric.

The equation ensures that the "length" between two points are the same on either frames.
$
  (macron(x)' - macron(x))^2 & = g_(mu nu) (macron(x)' - macron(x))^mu (macron(x)' - macron(x))^nu \
                             & = g_(mu nu) lorentzmatrix(mu, rho) lorentzmatrix(nu, sigma) (x' - x)^rho (x' - x)^sigma \
                             & = g_(rho sigma) (x' - x)^rho (x' - x)^sigma \
                             & = (x' - x)^2"."
$

In quantum mechanics, the time evolution of the state of a system is governed by one equation, the Schrodinger equation.
$ i hbar pdv(, t) stateket() = H stateket()"." $

Obvious attempt to consider the relativistic version is by setting the hamiltonian using the energy-momentum relation.
$
  E^2 & = (p c)^2 + (m c^2)^2"," \
    H & = + sqrt(p^2 c^2 + m^2 c^4)"."
$

We can expand the hamiltonian using binomial expansion.
$
  H & = +m c^2 sqrt(1 + frac(p^2, m^2 c^2)) \
    & = +m c^2 (1 + frac(1, 2) frac(p^2, m^2 c^2) - dots) \
    & = m c^2 + frac(p^2, 2 m) - dots "."
$

If we use this hamiltonian on the Schrodinger equation,
$
  i hbar pdv(, t) psi(vb(x), t) = + sqrt(- hbar^2 c^2 laplacian + m^2 c^4) psi(vb(x), t)","
$
square both side's operators then we get the *Klein-Gordon* equation,
$
  - hbar^2 pdv(, t, 2) psi(vb(x), t) = (-hbar^2 c^2 laplacian + m^2 c^4) psi(vb(x), t)"."
$
Without squaring both operators, there would be two problems:
+ Asymmetry of time and space. Time and space operators (in this case the differential) are separated, whereas in relativistic theory, time and space are one spacetime.
+ Non-locality in space. We already expanded hamiltonian using binomial expansion. We can see that the higher the order, there would be infinite number of differential of space (momentum operator).

To simplify this equation and bring the spacetime coordinate together, let us define a new differential operator.
$
  partial_mu & equiv pdv(, x^mu) = (frac(1, c) pdv(, t), nabla) "," \
  partial^mu & equiv pdv(, x_mu) = (- frac(1, c) pdv(, t), nabla) "."
$
The operator satisfies $partial^mu x^nu = g^(mu nu)$ and relates with Lorentz transformation as $macron(partial)^mu = lorentzmatrix(mu, nu) partial^nu$.

We can rewrite the Klein-Gordon as
$
  (partial^mu partial_mu - frac(m^2 c^2, hbar^2, style: "horizontal")) psi(x) = 0"."
$

Suppose that we are looking at the equation in different inertial frame $macron(x)$.
$
  (macron(partial)^mu macron(partial)_mu - frac(m^2 c^2, hbar^2, style: "horizontal")) macron(psi)(macron(x)) & = 0 \
  (g_(mu nu) macron(partial)^mu macron(partial)^nu - frac(m^2 c^2, hbar^2, style: "horizontal")) macron(psi)(macron(x)) & = 0 \
  (g_(mu nu) lorentzmatrix(mu, rho) lorentzmatrix(nu, sigma) partial^rho partial^sigma - frac(m^2 c^2, hbar^2, style: "horizontal")) macron(psi)(macron(x)) & = 0 \
  (g_(rho sigma) partial^rho partial^sigma - frac(m^2 c^2, hbar^2, style: "horizontal")) macron(psi)(macron(x)) & = 0 \
  (partial^mu partial_mu - frac(m^2 c^2, hbar^2, style: "horizontal")) macron(psi)(macron(x)) & = 0 "."
$

So, in both inertial frames, the wavefunctions satisfy the same Klein-Gordon equation.

Now that the Klein-Gordon equation satisfy conditions on the relativistic side, it actually violates the original Schrodinger equation. Notice how the time differential operator is in the first order but it is in the second order in Klein-Gordon equation. One of the prominent problem is that, the probability or norm of a state would then have some dependency on time (unconserved probability).

Dirac's attempt at solving this inconsistency starts with writing Schrodinger equation in the form
$
  i hbar pdv(, t) psi_(a)(x) = (- i hbar c (alpha^j)_(a b) partial_j + m c^2 beta_(a b)) psi_(b)(x)
$
where $alpha^j$ and $beta$ are called the Dirac matrices in spin space and $a$ and $b$ are either 1 or 2. Dirac matrices are defined to obey these conditions
$
  {alpha^j, alpha^k}_(a b) = 2 delta^(j k) delta_(a b) "," quad {alpha^j, beta}_(a b) = 0 "," quad (beta^2)_(a b) = delta_(a b) "."
$

Let us prove that these matrices must be even dimensional. First, we must find the eigenvalue of $beta$ using the third condition.
$
    beta ket(b) & = b ket(b) \
  beta^2 ket(b) & = b^2 ket(b) "."
$
We know from the condition that $beta^2$ in matrix form is just the identity matrix, so
$
  b^2 = 1 quad arrow quad b = plus.minus 1 "."
$
Now all that is left is to make sure that $Trace(beta) = 0$. To do that, let us consider ${alpha^j, beta}$.
$
                                            {alpha_j, beta} & = 0 \
                                alpha_j beta + beta alpha_j & = 0 \
                alpha_j alpha_j beta + alpha_j beta alpha_j & = 0 \
  Trace(alpha_j alpha_j beta) + Trace(alpha_j beta alpha_j) & = 0 \
                                      Trace(alpha^2_j beta) & = 0 "."
$

Now, consider the first condition. let $j = k$ and $a = b$ (diagonal matrix condition).
$
             2alpha_j^2 & = 2 \
              alpha_j^2 & = 1 \
         alpha_j^2 beta & = beta \
  Trace(alpha_j^2 beta) & = Trace(beta) = 0
$
For trace of $alpha$ matrices, consider the second condition again. This time, instead of multiplying another alpha matrix, we multiply it with the inverse of $beta$. The cyclical property of trace still applies. Then we can get that $Trace(alpha_j) = 0$. Now, we have shown that the dirac matrices are even dimensional. As for the minimum dimension, Dirac matrices cannot be a $2 times 2$ matrices. By working the anticommutator with the smallest matrices that satisfy ${alpha^j, alpha^k} = 2 delta^(j k)$, the Pauli matrices, we get that the only matrix capable of anticommuting with Pauli matrices is a zero matrix, or in another words, no "fourth" Pauli matrix exists. Therefore, their size must be $4 times 4$.

From the traces of Dirac matrices, we can conclude that the trace of the hamiltonian $(H = c alpha dotproduct vb(p) + m c^2 beta)$ is also zero. So, the four eigenvalues are $+E(vb(p))$, $+E(vb(p))$, $-E(vb(p))$, and $-E(vb(p))$. Dirac's proposed solutions for the negative energy level: that by Pauli exclusion principles, those negative energy states are already occupied by electrons forming a sea of electrons.

To make a more generalized quantum theory in relativistic limits, we have to start over from the ground, but this time we put time and space in an equal footing. To accomplish that, one of the method is to just demote position (space) from operator to just parameter (like time in non-relativistic quantum mechanics).

Before getting into relativistic quantum mechancis we would like to "transform" ordinary quantum mechanics (non-relativistic) to field theory. We begin by introducing *quantum field* operator $a(vb(x))$ and its conjugate $conjugate(a)(vb(x))$. For bosonic fields, the operators are subject to such rules:
$
  commute(a(vb(x)), a(vb(x'))) = 0 "," quad
  commute(conjugate(a)(vb(x)), conjugate(a)(vb(x'))) = 0 "," quad
  commute(a(vb(x)), conjugate(a)(vb(x'))) = delta(vb(x) - vb(x')) "."
$
Then, we can introduce the quantum field hamiltonian and state as
$
  H = integral dd(x, 3) conjugate(a)(vb(x)) (-frac(hbar, 2m) laplacian + U(vb(x)))a(vb(x)) + frac(1, 2) integral dd(x, 3) dd(y, 3) V(vb(x) - vb(y)) conjugate(a)(vb(x)) conjugate(a)(vb(y)) a(vb(y)) a(vb(x)) "," \
  stateket() = integral dd(x_1, 3) dots dd(x_n, 3) psi(vb(x)_1, dots, vb(x)_n; t) conjugate(a)(vb(x)_1) dots conjugate(a)(vb(x)_n) ket(0) "."
$

We can apply the hamiltonian directly to the state ket. If we look at the form of hamiltonian, there are two elements of summation. We can call these as $H_1$ and $H_2$. We then can apply them separately to the state ket for the sake of simplicity. Before that, let us consider this equation.
$
  a(vb(x)) & conjugate(a)(vb(x)_1) conjugate(a)(vb(x)_2) dots conjugate(a)(vb(x)_n) ket(0) \ & = (conjugate(a)(vb(x)_1) a(vb(x)) + delta(vb(x) - vb(x)_1)) conjugate(a)(vb(x)_2) dots conjugate(a)(vb(x)_n) ket(0) \
  & = conjugate(a)(vb(x)_1) a(vb(x)) conjugate(a)(vb(x)_2) dots conjugate(a)(vb(x)_n) ket(0) + delta(vb(x) - vb(x)_1) conjugate(a)(vb(x)_2) dots conjugate(a)(vb(x)_n) ket(0) \
  & dots.v \
  & = conjugate(a)(vb(x)_1) dots conjugate(a)(vb(x)_n) a(vb(x)) ket(0) + sum_(j = 1)^(n) delta(x - x_j) product_(k != j)^(n) conjugate(a)(vb(x)_n) ket(0) \
  & = sum_(j = 1)^(n) delta(vb(x) - vb(x)_j) product_(k != j)^(n) conjugate(a)(vb(x)_k) ket(0) "."
$
Now, we can consider the $H_1$ operator.
$
  H_1 & stateket() \
  & = integral dd(x, 3) dd(x_1, 3) dots dd(x_n, 3) conjugate(a)(vb(x)) (-frac(hbar, 2m) laplacian + U(vb(x))) psi(vb(x)_1, dots, vb(x)_n; t) a(vb(x)) conjugate(a)(vb(x)_1) dots conjugate(a)(vb(x)_n) ket(0) \
  & = integral dd(x, 3) dd(x_1, 3) dots dd(x_n, 3) conjugate(a)(vb(x)) K(vb(x)) psi (sum_(j = 1)^(n) delta(vb(x) - vb(x)_j) product_(k != j)^(n) conjugate(a)(vb(x)_k) ket(0)) \
  & = sum_(j = 1)^(n) integral dd(x_1) dots dd(x_n) conjugate(a)(vb(x)_1) dots conjugate(a)(vb(x)_n) (K_(j)(vb(x)_j) psi) ket(0)\
  & = integral dd(x_1) dots dd(x_n) conjugate(a)(vb(x)_1) dots conjugate(a)(vb(x)_n) sum_(j = 1)^(n) (-frac(hbar, 2m) laplacian_j + U(vb(x)_j)) psi ket(0)
$

Now, let us consider this equation first before moving on to $H_2$.
$
  a(vb(y)) a(vb(x)) & conjugate(a)(vb(x)_1) conjugate(a)(vb(x)_2) dots conjugate(a)(vb(x)_n) ket(0) \
  & = sum_(j = 1)^(n) delta(vb(x) - vb(x)_j) a(vb(y)) product_(k != j)^(n) conjugate(a)(vb(x)_n) ket(0) \
  & = sum_(j = 1)^(n) delta(vb(x) - vb(x)_j) sum_(k != j)^(n) delta (vb(y) - vb(x)_k) product_(l != k, j)^(n) conjugate(a)(vb(x)_l) ket(0)
$
Let us consider $H_2$ operator.
$
  H_2 & stateket() \
  & = integral dd(x, 3) dd(y, 3) dd(x_1, 3) dots dd(x_n, 3) V(vb(x) - vb(y)) psi conjugate(a)(vb(x)) conjugate(a)(vb(y)) a(vb(y)) a(vb(x)) conjugate(a)(vb(x)_1) conjugate(a)(vb(x)_2) dots conjugate(a)(vb(x)_n) ket(0) \
  & = sum_(j = 1)^(n) sum_(k != j)^(n) integral dd(x, 3) dd(y, 3) dd(x_1, 3) dots dd(x_n, 3) V(vb(x) - vb(y)) psi delta(vb(x) - vb(x)_j)delta (vb(y) - vb(x)_k) conjugate(a)(vb(x)) conjugate(a)(vb(y)) product_(l != k, j)^(n) conjugate(a)(vb(x)_l) ket(0) \
  & = sum_(j = 1)^(n) sum_(k != j)^(n) integral dd(x_1, 3) dots dd(x_n, 3) V(vb(x)_j - vb(x)_k) psi conjugate(a)(vb(x)_j) conjugate(a)(vb(x)_k) product_(l != k, j)^(n) conjugate(a)(vb(x)_l) ket(0) \
  & = integral dd(x_1, 3) dots dd(x_n, 3) conjugate(a)(vb(x)_1) dots conjugate(a)(vb(x)_n) (sum_(j = 1)^(n) sum_(k != j)^(n) V(vb(x)_j - vb(x)_k)) psi ket(0) "."
$

Putting all back together,
$
  H stateket() & = H_1 stateket() + 1/2 H_2 stateket() \
  & = integral dd(x_1, 3) dots dd(x_n, 3) conjugate(a)(vb(x)_1) dots conjugate(a)(vb(x)_n) (sum_(j = 1)^(n) (-frac(hbar, 2m) laplacian_j + U(vb(x)_j)) + frac(1, 2) sum_(j = 1)^(n) sum_(k != j)^(n) V(vb(x)_j - vb(x)_k)) psi ket(0) \
  & = integral dd(x_1, 3) dots dd(x_n, 3) conjugate(a)(vb(x)_1) dots conjugate(a)(vb(x)_n)(sum_(j = 1)^(n) (-frac(hbar, 2m) laplacian_j + U(vb(x)_j)) + sum_(j = 1)^(n) sum_(k = 1)^(j - 1) V(vb(x)_j - vb(x)_k)) psi ket(0) "."
$

Applying time operator to the state,
$
  i hbar pdv(, t) stateket() = integral dd(x_1, 3) dots dd(x_n, 3) conjugate(a)(vb(x)_1) dots conjugate(a)(vb(x)_n) (i hbar pdv(, t)) psi ket(0) "."
$

If we demand that the hamiltonial satisfy the Schrodinger equation, then
$
  i hbar pdv(, t) stateket() = H stateket() \
  i hbar pdv(psi, t) = [sum_(j = 1)^(n) (-frac(hbar, 2m) laplacian_j + U(vb(x)_j)) + sum_(j = 1)^(n) sum_(k = 1)^(j - 1) V(vb(x)_j - vb(x)_k)] psi "."
$

Look at the integration from the state ket. Having wave function with space dependency and that creation operator commutes with each other, we can see that only symmetric $psi$ would survive the integration.
$
  psi(dots vb(x)_i dots vb(x)_j dots; t) = psi(dots vb(x)_j dots vb(x)_i dots; t) "."
$
Fermionic field, on the other hand, obeys these anticommutator relation:
$
  anticommute(a(vb(x)), a(vb(x'))) = 0 "," quad anticommute(conjugate(a)(vb(x)), conjugate(a)(vb(x'))) = 0 "," quad anticommute(a(vb(x)), conjugate(a)(vb(x'))) = 0 "."
$
In contrast with the previous bosonic field, the fermionic wave equation's part that would survive the integration in state ket equation is the antisymmetric part.
$
  psi(dots vb(x)_i dots vb(x)_j dots; t) = - psi(dots vb(x)_j dots vb(x)_i dots; t) "."
$

There is another operator that counts the number of particles, that is
$
  N = integral dd(x, 3) conjugate(a)(vb(x)) a(vb(x)) "."
$
We can see how this commutes with previous hamiltonian for fields.
$
  commute(N, H) = N H - H N ","
$

$
  N H & = integral dd(x', 3) dd(x, 3) conjugate(a)(vb(x')) a(vb(x')) conjugate(a)(vb(x)) K(vb(x)) a(vb(x)) \
  & + frac(1, 2) integral dd(x', 3) dd(x, 3) dd(y, 3) V(vb(x) - vb(y)) conjugate(a)(vb(x')) a(vb(x')) conjugate(a)(vb(x)) conjugate(a)(vb(y)) a(vb(y)) a(vb(x)) \
  & = integral dd(x', 3) dd(x, 3) conjugate(a)(vb(x)) conjugate(a)(vb(x')) K(vb(x)) a(vb(x')) a(vb(x)) + integral dd(x, 3) conjugate(a)(vb(x)) K(vb(x)) a(vb(x)) \
  & + frac(1, 2) integral dd(x', 3) dd(x, 3) dd(y, 3) V(vb(x) - vb(y)) conjugate(a)(vb(x)) conjugate(a)(vb(y)) conjugate(a)(vb(x')) a(vb(x')) a(vb(y)) a(vb(x)) \
  & + integral dd(x, 3) dd(y, 3) V(vb(x) - vb(y)) conjugate(a)(vb(x)) conjugate(a)(vb(y)) a(vb(y)) a(vb(x)) "," \
  H N & = integral dd(x, 3) dd(x', 3) conjugate(a)(vb(x)) K(vb(x)) a(vb(x)) conjugate(a)(vb(x')) a(vb(x')) \
  & + frac(1, 2) integral dd(x, 3) dd(y, 3) dd(x', 3) V(vb(x) - vb(y)) conjugate(a)(vb(x)) conjugate(a)(vb(y)) a(vb(y)) a(vb(x)) conjugate(a)(vb(x')) a(vb(x')) \
  & = integral dd(x', 3) dd(x, 3) conjugate(a)(vb(x)) conjugate(a)(vb(x')) K(vb(x)) a(vb(x')) a(vb(x)) + integral dd(x, 3) conjugate(a)(vb(x)) K(vb(x)) a(vb(x)) \
  & + frac(1, 2) integral dd(x', 3) dd(x, 3) dd(y, 3) V(vb(x) - vb(y)) conjugate(a)(vb(x)) conjugate(a)(vb(y)) conjugate(a)(vb(x')) a(vb(x')) a(vb(y)) a(vb(x)) \
  & + integral dd(x, 3) dd(y, 3) V(vb(x) - vb(y)) conjugate(a)(vb(x)) conjugate(a)(vb(y)) a(vb(y)) a(vb(x)) "." \
$
Thus,
$
  commute(N, H) = 0 "."
$