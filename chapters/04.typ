#import "@preview/physica:0.9.8": *
#import "../helpers.typ": anticommute, commute, conjugate

= Spin Statistic Theorem

We have derived the free spin-zero boson hamiltonian in the previous chapter using the commutator relations between annihilation and creation field operator. Let us add some terms to the hamiltonian that will result in *local* and *invariant* interactions.
$
  phi^(+)(vb(x)) equiv integral tilde(dd(k)) e^(i vb(k) dotproduct vb(x)) a(vb(k)) comma \
  phi^(-)(vb(x)) equiv integral tilde(dd(k)) e^(-i vb(k) dotproduct vb(x)) conjugate(a)(vb(k)) "."
$
Using unitary transformation,
$
  phi^(+)(x) & = e^(i H_0 t) phi^(+)(vb(x)) e^(- i H_0 t) \
  & = e^(i H_0 t) integral tilde(dd(k)) e^(i vb(k) dotproduct vb(x)) a(vb(k)) e^(- i H_0 t) \
  & = (1 + i H_0 t - 1/2 H_0^2 t^2 - i/6 H_0^3 t^3 + dots) phi^+ (1 - i H_0 t - 1/2 H_0^2 t^2 + i/6 H_0^3 t^3 + dots) \
  & = phi^+ + i commute(H_0, phi^+) t + 1/2 H_0 phi^+ H_0 t^2 + 1/2 H_0 phi^+ H_0 t^2 - 1/2 H_0^2 phi^+ t^2 - 1/2 phi^+ H_0^2 t + dots \
  & = phi^+ + i commute(H_0, phi^+) t - 1/2 H_0 commute(H_0, phi^+) t^2 + 1/2 commute(H_0, phi^+) H_0 t^2 + dots \
  & = phi^+ + i commute(H_0, phi^+) t + 1/2! commute(commute(H_0, phi^+), H_0) t^2 \
  & wide + i/6 phi^+ H_0^3 t^3 - i/2 H_0 phi^+ H_0^2 t^3 + i/2 H_0^2 phi^+ H_0 t^3 - i/6 H_0^3 phi^+ t^3 + dots \
  & = phi^+ + i commute(H_0, phi^+) t + 1/2! commute(commute(H_0, phi^+), H_0) t^2 + i/6 phi^+ H_0^3 t^3 - i/6 H_0^3 phi^+ t^3 \
  & wide - i/6 H_0 phi^+ H_0^2 t^3 - i/6 H_0 phi^+ H_0^2 t^3 - i/6 H_0 phi^+ H_0^2 t^3 \
  & wide + i/6 H_0^2 phi^+ H_0 t^3 + i/6 H_0^2 phi^+ H_0 t^3 + i/6 H_0^2 phi^+ H_0 t^3 \
  & = phi^+ + i commute(H_0, phi^+) t + 1/2! commute(commute(H_0, phi^+), H_0) t^2 - i/6 commute(H_0, phi^+) H_0^2 t^3 - i/6 H_0^2 commute(H_0, phi^+) t^3 \
  & wide + i/3 H_0 commute(H_0, phi^+) H_0 t^3 + dots \
  & = phi^+ + i commute(H_0, phi^+) t + 1/2! commute(commute(H_0, phi^+), H_0) t^2 \
  & wide + i/6 commute(H_0, commute(H_0, psi^+))H_0 t^3+ i/6 H_0 commute(commute(H_0, phi^+), H_0) t^3 + ... \
  & = phi^+ + i commute(H_0, phi^+) t + 1/2! commute(commute(H_0, phi^+), H_0) t^2 + i/3! commute(commute(H_0, commute(H_0, psi^+)), H_0) t^3 + dots \
  & = phi^+ + i commute(H_0, phi^+) t - 1/2! commute(H_0, commute(H_0, phi^+)) t^2 - i/3! commute(H_0, commute(H_0, commute(H_0, psi^+))) t^3 + dots "."
$
Let us examine
$
  commute(H_0, phi^+) & = integral tilde(dd(k))' tilde(dd(k)) omega' e^(i vb(k) dotproduct vb(x)) conjugate(a)(vb(k)') a(vb(k)') a(vb(k)) - integral tilde(dd(k))' tilde(dd(k)) omega' e^(i vb(k) dotproduct vb(x)) a(vb(k)) conjugate(a)(vb(k)') a(vb(k)') \
  & = integral tilde(dd(k))' tilde(dd(k)) omega' e^(i vb(k) dotproduct vb(x)) commute(conjugate(a)(vb(k)'), a(vb(k))) a(vb(k)') \
  & = -integral frac(dd(k', 3), (2pi)^3 2 omega') tilde(dd(k)) omega' e^(i vb(k) dotproduct vb(x)) (2pi)^3 2 omega var((vb(k)' - vb(k))) a(vb(k)') \
  & = - integral tilde(dd(k)) omega e^(i vb(k) dotproduct vb(x)) a(vb(k)) comma
$
so,
$
  phi^(+)(x) & = integral tilde(dd(k)) (1 - i omega + 1/2! omega^2 + 1/3! omega^3 + dots ) e^(i vb(k) dotproduct vb(x)) a(vb(k)) \
  & = integral tilde(dd(k)) e^(- i omega t + i vb(k) dotproduct vb(x)) a(vb(k)) \
  & = integral tilde(dd(k)) e^(i k x) a(vb(k)) comma \
  phi^(-)(x) & = integral tilde(dd(k)) e^(- i k x) conjugate(a)(vb(k)) "."
$
We have previously proved that the creation and annihilation operator transform (under Lorentz) as
$
  U(Lambda)^(-1) a(vb(k)) U(Lambda) = a(Lambda^(-1) vb(k)) comma \
  U(Lambda)^(-1) conjugate(a)(vb(k)) U(Lambda) = conjugate(a)(Lambda^(-1) vb(k))"."
$
If we apply the transformation to the two field equations then
$
  U(Lambda)^(-1) phi^(plus.minus)(x) U(Lambda) & = integral tilde(dd(k)) U(Lambda)^(-1) e^(plus.minus i k x) A(vb(k)) U(Lambda) \
  & = integral tilde(dd(k)) U(Lambda)^(-1) e^(plus.minus i k x) U(Lambda) U(Lambda)^(-1) A(vb(k)) U(Lambda) \
  & = integral tilde(dd(k)) e^(plus.minus i k (Lambda^(-1) x)) A(Lambda^(-1) vb(k))\
  & = phi^(plus.minus)(Lambda^(-1) x) "."
$

Recall the time-dependent perturbation transition amplitude. Let us denote initial and final states as $ket(i)$ and $ket(f)$. The formula for transition amplitude $cal(T)_(f arrow.l i)$ is then
$
  cal(T)_(f arrow.l i) = braket(f, T exp(-i integral_(-infinity)^(infinity) dd(t) H_I (t)), i) comma \
  H_I (t) = e^(i H_0 t) H_1 e^(-i H_0 t)"."
$
For the transition amplitude to be Lorentz invariant, the time ordering operator then must be *frame independent* or, in another words, if the separation between two points in spacetime coordinate is timelike
$(x - x') > 0$. So, to avoid transition amplitude being different in another Lorentz frame,
$
  commute(cal(H)_(I)(x), cal(H)_(I)(x')) = 0 quad "whenever" quad (x - x') > 0 "."
$

If the hamiltonian consists of $phi^(plus.minus)$,
$
  commute(phi^(+)(x), phi^(+)(x'))_(minus.plus) = 0 \
  commute(phi^(-)(x), phi^(-)(x'))_(minus.plus) = 0 \
$
$
  commute(phi^(+)(x), phi^(-)(x'))_(minus.plus) & = integral tilde(dd(k)) tilde(dd(k))' exp(i(k x - k' x')) commute(a(vb(k)), conjugate(a)(vb(k)'))_(minus.plus) \
  & = integral tilde(dd(k)) tilde(dd(k))' exp(i(k x - k' x')) (2 pi)^3 2 omega var((vb(k) - vb(k)')) \
  & = integral frac(dd(k, 3), (2 pi)^3 2 omega) exp(i k (x - x'))"."
$
Now, we define $r equiv (x - x')$ and we can change the integral into its spherical form.
$
  commute(phi^(+)(x), phi^(-)(x'))_(minus.plus) & = integral frac(2pi sin(theta) vb(k)^2 dd(abs(vb(k))) dd(theta), (2 pi)^3 2 omega) exp(-i omega Delta t) exp(i abs(vb(k)) abs(Delta vb(x)) cos(theta)) \
  & = integral frac(sin(theta) vb(k)^2 dd(abs(vb(k))) dd(theta), (2 pi)^2 2 omega) exp(-i omega Delta t) exp(i abs(vb(k)) abs(Delta vb(x)) cos(theta)) \
  & = integral frac(vb(k^2) dd(abs(k)), 8 pi^2 omega) exp(-i omega Delta t) integral_0^(pi) exp(i abs(vb(k)) abs(Delta vb(x)) cos(theta)) sin(theta) dd(theta) \
  & = integral frac(vb(k^2) dd(abs(k)), 8 pi^2 omega) exp(-i omega Delta t) integral_(-1)^(1) exp(i abs(vb(k)) abs(Delta vb(x)) cos(theta)) dd((cos(theta))) \
  & = integral frac(vb(k^2) dd(abs(k)), 8 pi^2 omega) exp(-i omega Delta t) frac(1, i abs(vb(k)) abs(Delta vb(x))) [e^(i abs(vb(k)) abs(Delta vb(x))) - e^(- i abs(vb(k)) abs(Delta vb(x)))] \
  & = integral frac(abs(vb(k)) dd(abs(k)), i 8 pi^2 omega abs(Delta vb(x))) (e^(-i omega Delta t + i abs(vb(k)) abs(Delta vb(x))) - e^(i omega Delta t - i abs(vb(k)) abs(Delta vb(x))))"."
$
Evaluating at time frame where $t' = t$, that means now $r = abs(Delta vb(x))$
$
  commute(phi^(+)(x), phi^(-)(x'))_(minus.plus) & = integral frac(abs(vb(k)) dd(abs(vb(k))), 4 pi^2 omega r) sin(abs(vb(k)) r) \
  & = frac(1, 4 pi^2 r) integral frac(abs(vb(k)), sqrt(vb(k)^2 + m^2)) sin(r abs(vb(k))) dd(abs(vb(k))) \
  & = frac(1, 4 pi^2 r) ([- frac(abs(vb(k)) sin(r abs(vb(k))) dd(abs(vb(k))), r (k^2 + m^2)^(1/2))]_0^infinity + frac(m^2, r) integral_0^infinity frac(cos(r abs(vb(k))), (k^2 +m^2)^(3/2)) dd(abs(vb(k)))) \
  & = frac(m, 4 pi^2 r) [frac(m, r) integral_0^infinity frac(cos(r abs(vb(k))), (k^2 +m^2)^(3/2)) dd(abs(vb(k)))]"."
$
We then use the definition of modified Bessel function represented with Bassett's integral
$
  K_1 (x z) = z/x integral_0^infinity frac(cos(x t) dd(t), (t^2 + z^2)^(3/2))"."
$
Changing $x$ to $r$ and $z$ to $m$, we can rewrite the (anti)commutator of $plus.minus$ field as
$
  commute(phi^(+)(x), phi^(-)(x'))_(minus.plus) = frac(m, 4 pi^2 r) K_1 (r m) equiv C(r)"."
$

Let us examine the limit of this (anti)commutator relation by taking $m arrow 0$. The modified Bessel function's asymptotic form is given by
$
  K_(alpha)(z) approx cases(
    - ln(z/2) - gamma quad & "if" quad alpha = 0 comma,
    frac(Gamma(alpha), 2) (2/z)^alpha quad & "if" quad alpha > 0 comma,
  )
$
for small arguments $0 < abs(z) << sqrt(alpha + 1)$. We then can replace the $z$ as $r m$ and $alpha = 1$. As $m arrow 0$, $r m arrow 0$. Thus the limit of the bessel function is
$
  lim_(m arrow 0) K_(1)(r m) & = Gamma(1)/2 frac(2, r m) \
                             & = 1/(r m)"."
$
Now we can examine the limit of the (anti)commutator relation before as,
$
  lim_(m arrow 0) commute(phi^(+)(x), phi^(-)(x'))_(minus.plus) & = m/(4 pi^2 r^2) (1/(r m)) \
                                                                & = 1/(4 pi^2 r^2)"."
$
The point is that they do not (anti)commute, even when the mass is zero. An attemp to solve this non-(anti)commutable fields is to use some particular combinations of $phi^(+)(x)$ and $phi^(-)(x)$. Let us define two new forms of field equation with a complex constant called $lambda$.
$
  phi_(lambda)(x) & equiv phi^(+)(x) + lambda phi^(-)(x) comma \
  conjugate(phi)_(lambda)(x) & equiv phi^(-)(x) + lambda^* phi^(+)(x)"."
$
The (anti)commutator relation between these two is
$
  commute(phi_(lambda)(x), conjugate(phi)_(lambda)(x'))_(minus.plus) & = phi^(+)(x) phi^(-)(x') minus.plus phi^(-)(x') phi^(+)(x) + abs(lambda)^2 (phi^(-)(x) phi^(+)(x') minus.plus phi^(+)(x') phi^(-)(x)) \
  & = commute(phi^(+)(x), phi^(-)(x'))_(minus.plus) + abs(lambda)^2 commute(phi^(-)(x), phi^(+)(x'))_(minus.plus) \
  & = commute(phi^(+)(x), phi^(-)(x'))_(minus.plus) minus.plus abs(lambda)^2 commute(phi^(+)(x'), phi^(-)(x))_(minus.plus) \
  & = C(r) minus.plus abs(lambda)^2 C(-r) \
  & = (1 minus.plus abs(lambda)^2) C(r) comma
$
and
$
  commute(phi_(lambda)(x), phi_(lambda)(x'))_(minus.plus) & = (phi^(+)(x) + lambda phi^(-)(x))(phi^(+)(x') + lambda phi^(-)(x')) minus.plus (x' arrow.l.r x) \
  & = lambda(phi^(+)(x) phi^(-)(x') minus.plus phi^(-)(x') phi^(+)(x)) + lambda(phi^(-)(x) phi^(+)(x') minus.plus phi^(+)(x') phi^(-)(x)) \
  & = lambda C(r) minus.plus lambda C(r) \
  & = lambda (1 minus.plus 1) C(r)"." 
$

If we want them all to commute/anticommute with each other, then we would have to choose $abs(lambda) = 1$ and *only* commutator relations between the fields. Only then we can create $cal(H)$ that is hermitian. Let us take that $lambda = e^(i alpha)$,
$
  abs(lambda)^2 = e^(-i alpha + i alpha) \
  abs(lambda)^2 = 1 comma quad "then" quad abs(lambda) = + 1"."
$
Substituting back to the field equation,
$
  phi_(e^(i alpha))(x) & = phi^(+)(x) + e^(i alpha) phi^(-)(x) \
  e^(- frac(i alpha, 2)) phi_(e^(i alpha))(x) & = e^(- frac(i alpha, 2)) phi^(+)(x) + e^(frac(i alpha, 2)) phi^(-)(x) \
  e^(- frac(i alpha, 2)) phi_(e^(i alpha))(x) & = integral tilde(dd(k)) (e^(i (k x - frac(alpha, 2, style: "horizontal"))) a(vb(k)) + e^(- i (k x - frac(alpha, 2, style: "horizontal"))) conjugate(a)(vb(k))) comma
$
and also
$
  commute(phi_(lambda)(x), conjugate(phi)_(lambda)(x')) = commute(phi_(lambda)(x), phi_(lambda)(x')) = 0 comma
$
which then the $phi$ functions are just real scalar field function. Thus, the attempt of treating annihilation and creation operators as fundamental leads back to real scalar field. Let us now go back to the field anticommutation.
$
  anticommute(phi(x), phi(x')) = 0 comma
$
and setting $t = t'$, we have
$
  anticommute(phi(x), phi(x)) & = 0 \
  (phi(x))^2 & = 0"."
$
This then leads to,
$
  tensor(partial, mu) tensor(partial, -mu) (phi(x))^2 & = 0 \
  tensor(partial, mu) ((tensor(partial, -mu) phi(x)) phi(x) + phi(x) tensor(partial, -mu) phi(x)) & = 0 \
  partial^2 phi(x) phi(x) + tensor(partial, -mu) phi(x) tensor(partial, mu) phi(x) + tensor(partial, mu) phi(x) tensor(partial, -mu) phi(x) + phi(x) partial^2 phi(x) & = 0 \
  partial^2(anticommute(phi(x), phi(x))) + anticommute(tensor(partial, -mu) phi(x), tensor(partial, mu) phi(x)) & = 0
$
$
  anticommute(tensor(partial, -mu) phi(x), tensor(partial, mu) phi(x)) & = 0 \
  tensor(g, mu, nu) tensor(partial, -mu) phi(x) tensor(partial, -nu) phi(x) + tensor(g, mu, nu) tensor(partial, -nu) phi(x) tensor(partial, -mu) phi(x) & = 0 \
  - 2 (tensor(partial, -0) phi(x))^2 + 2 (tensor(partial, -i) phi(x))^2 & = 0 \
  (tensor(partial, -i) phi(x))^2 - (tensor(partial, -0) phi(x))^2 & = 0 \
  (tensor(partial, -mu) phi(x)) (tensor(partial, mu) phi(x)) & = 0 \
  tensor(partial, -mu) phi(x) = 0 quad "or" quad tensor(partial, mu) phi(x) = 0
$
This then results in trivial $cal(L)$, such that it would only depends on linear $phi(x)$ and wipes out all dependencies of derivative of $phi(x)$. This then would lead to the wrong physics.
$
  cal(L) prop phi(x)"."
$

One choice of quantization, either commutation or anticommutation always leads to trivial $cal(L)$ so this choice is not allowed. Furthermore, the choice is always commutator for bosons and anticommutator for fermions.