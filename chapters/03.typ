#import "@preview/physica:0.9.8": *
#import "../helpers.typ": commute, conjugate

= Canonical Quantization of Scalar Fields

Before we go back to the hamiltonian from section 1, let us set
$
  c = hbar = 1
$
for our convenience. Those factors could be reattained using dimensional analysis if needed. Now let us go back to previously constructed hamiltonian. For the case of free particles (no external potential working on the particle),
$
  H = integral dd(x, 3) conjugate(a)(vb(x)) (-1/(2m) laplacian) a(vb(x)) "."
$
Using inverse Fourier transformation on the integral, we can set the integral on momentum space,
$
  a(vb(x)) = integral dd(p', 3)/((2 pi)^(3/2)) exp(-i vb(p') dotproduct vb(x)) tilde(a)(vb(p')) "."
$
So, substituting back to the previous hamiltonian,
$
  H & = integral dd(x, 3) dd(p'', 3) dd(p', 3) 1/((2 pi)^(3)) exp(i vb(p'') dotproduct vb(x)) conjugate(tilde(a))(vb(p'')) (-1/(2m) laplacian) exp(-i vb(p') dotproduct vb(x)) tilde(a)(vb(p')) \
  & = integral dd(x, 3) dd(p'', 3) dd(p', 3) 1/((2 pi)^(3)) exp(i vb(p'') dotproduct vb(x)) conjugate(tilde(a))(vb(p'')) (-1/(2m) (-i vb(p'))^2) exp(-i vb(p') dotproduct vb(x)) tilde(a)(vb(p')) \
  & = integral dd(p'', 3) dd(p', 3) dd(x, 3) 1/((2 pi)^(3)) exp(i (vb(p'') - vb(p')) dotproduct vb(x)) 1/(2m) (vb(p'))^2 conjugate(tilde(a))(vb(p'')) exp(-i vb(p') dotproduct vb(x)) tilde(a)(vb(p')) \
  & = integral dd(p'', 3) dd(p', 3) delta(vb(p'') - vb(p')) 1/(2m) (vb(p'))^2 conjugate(tilde(a))(vb(p'')) tilde(a)(vb(p')) \
  & = integral dd(p, 3) 1/(2m) vb(p)^2 conjugate(tilde(a))(vb(p)) tilde(a)(vb(p)) "."
$
The commutation (anticommutation) relations for the operators are
$
                        commute(tilde(a)(vb(p)), tilde(a)(vb(p')))_(minus.plus) & = 0 \
  commute(conjugate(tilde(a))(vb(p)), conjugate(tilde(a))(vb(p')))_(minus.plus) & = 0 \
             commute(tilde(a)(vb(p)), conjugate(tilde(a))(vb(p')))_(minus.plus) & = delta(vb(p) - vb(p')) \
$
Like the annhilation operator,
$
  tilde(a)(vb(p)) ket(0) = 0 "."
$

We could see from the hamiltonian that energy is defined as $E(vb(p)) = (vb(p)^2)/(2m)$. If we want to generalize it to the relativistic limits, we could set the energy using the energy-momentum relation, that is $E(vb(p)) = sqrt(vb(p)^2 c^2 + m^2 c^4)$. Substituting the energy back into the hamiltonian,
$
  H = integral dd(p, 3) sqrt(vb(p)^2 c^2 + m^2 c^4) conjugate(tilde(a))(vb(p)) tilde(a)(vb(p)) "."
$
This is the relativistic hamiltonian for free spin-0 particles (both bosons and fermions). To see if the theory is Lorentz invariant, let us go back to the Klein-Gordon equation, that is the Lorentz invariant equation of motion for classical scalar field.
$
  (-partial^2 + m^2) phi(x) = 0 "."
$
Because $phi$ is only classical field, the $m$ is not yet to be mass as its dimension is $[L]^(-1)$. This equation of motion can be derived from the action principle $S = integral dd(x, 4) cal(L)$, where $L = integral dd(x, 3) cal(L)$ is the integral of lagrangian density $cal(L)$. Action on another frame would be $macron(S) = integral dd(x, 4) macron(cal(L))$. Let us take a look at Lorentz transformation.
$
                          tensor(macron(x), mu) & = tensor(Lambda, mu, -nu) tensor(x, nu) \
  tensor(partial, -alpha) tensor(macron(x), mu) & = tensor(Lambda, mu, -nu) tensor(partial, -alpha) tensor(x, nu) \
  tensor(partial, -alpha) tensor(macron(x), mu) & = tensor(Lambda, mu, -nu) tensor(delta, -alpha, nu) \
                        tensor(Lambda, mu, -nu) & = tensor(partial, -nu) tensor(macron(x), mu) \
                                                & = pdv(tensor(macron(x), mu), tensor(x, nu)) "."
$
We can see that the Lorentz matrix also acts as the Jacobian between two inertial frame. So, the infinitesimal volume of the two frames are related with
$
  dd(macron(x), 4) & = det(J) dd(x, 4) \
                   & = det(Lambda) dd(x, 4) \
                   & = dd(x, 4) "." \
$
Since we are taking consideration only of proper orthochronous transformation, infinitesimal volumes are the same between two frames. Now, if we want to make sure that action $S$ is invariant, the only left is the lagrangian density. We then set that the lagrangian density must be the same in two frames
$
  macron(cal(L)) = cal(L) ","
$
so now,
$
  macron(S) = integral dd(macron(x), 4) macron(cal(L)) = integral dd(x, 4) cal(L) = S "."
$
Let us take the lagrangian density as
$
  cal(L) = -1/2 tensor(partial, mu) phi tensor(partial, -mu) phi - 1/2 m^2 phi^2 "."
$
If we take the variation of action based on that lagrangian and apply the least action principle,
$
  var(S) & = 0 \
  integral dd(x, 4) var(cal(L)) & = 0 \
  integral dd(x, 4) [-1/2 tensor(partial, mu) var(phi) tensor(partial, -mu) phi - 1/2 tensor(partial, mu) phi tensor(partial, -mu) var(phi) - 1/2 m^2 (2 phi var(phi))] & = 0 \
  integral dd(x, 4) [-1/2 tensor(partial, mu) var(phi) tensor(partial, -mu) phi - 1/2 tensor(partial, mu) phi tensor(partial, -mu) var(phi) - m^2 phi var(phi)] & = 0 \
  -1/2 [(tensor(partial, -mu) phi + tensor(partial, mu) phi) lr((var(phi))|)^(infinity)_(-infinity) - 2 integral dd(x, 4) var(phi) tensor(partial, mu) tensor(partial, -mu) phi] - integral dd(x, 4) m^2 phi var(phi) & = 0 \
  integral dd(x, 4) (tensor(partial, mu) tensor(partial, -mu) - m^2) phi var(phi) & = 0 ","
$
so we obtained Klein-Gordon equation from the invariant lagrangian density. The general solution for Klein-Gordon is
$
  phi(vb(x), t) = integral dd(k, 3)/f(k) [a(vb(k)) e^(i vb(k) dotproduct vb(x) - i omega t) + b(vb(k)) e^(i vb(k) dotproduct vb(x) + i omega t)] "."
$
We must impose that $phi(x) = phi^*(x)$ to ensure that the field equation is real.
$
  phi^*(vb(x), t) & = integral dd(k, 3)/f(k) [a^*(vb(k)) e^(- i vb(k) dotproduct vb(x) + i omega t) + b^*(vb(k)) e^(-i vb(k) dotproduct vb(x) - i omega t)] \
  & = integral dd(k, 3)/f(k) [b^*(-vb(k)) e^(i vb(k) dotproduct vb(x) - i omega t) + a^*(-vb(k)) e^(i vb(k) dotproduct vb(x) + i omega t)] "."
$
Equating both fields, we get that $a(vb(k)) = b^*(- vb(k))$ and $b(vb(k)) = a^*(- vb(k))$. So, changing all coefficient to $a$, the field equation becomes
$
  phi(vb(x), t) & = integral dd(k, 3)/f(k) [a(vb(k)) e^(i vb(k) dotproduct vb(x) - i omega t) + a^*(- vb(k)) e^(i vb(k) dotproduct vb(x) + i omega t)] \
  & = integral dd(k, 3)/f(k) [a(vb(k)) e^(i vb(k) dotproduct vb(x) - i omega t) + a^*(vb(k)) e^(- i vb(k) dotproduct vb(x) + i omega t)] "."
$
By defining 4-vector $tensor(k, mu) = (omega, vb(k))$,
$
  phi(x) = integral dd(k, 3)/f(k) [a(vb(k)) e^(i tensor(k, mu) tensor(x, -mu)) + a^*(vb(k)) e^(- i tensor(k, mu) tensor(x, -mu))] "."
$
We define *on-shell* momentum as $k^2 = - m^2$. So, in this case,
$
  k^2 = -omega^2 + vb(k)^2 = - m^2 ","
$
if we take $exp i(vb(k) dotproduct vb(x) plus.minus omega t)$ as one solution of the Klein-Gordon equation.

Now we move on to choose the factor of $1/f(k)$ inside the integrand. An integration measure that is Lorentz (proper-orthochronous) invariant is $integral dd(tensor(k, 0)) var((k^2 + m^2)) theta(tensor(k, 0))$ where $delta$ and $theta$ are the delta Dirac and step function.
$
  integral_(-infinity)^(infinity) dd(tensor(k, 0)) var((k^2 + m^2)) theta(tensor(k, 0)) & = integral_(-infinity)^(infinity) dd(tensor(k, 0)) var((vb(k)^2 + m^2 - (tensor(k, 0))^2)) theta(tensor(k, 0)) \
  & = integral_(-infinity)^(infinity) dd(tensor(k, 0)) var((omega^2 - (tensor(k, 0))^2)) theta(tensor(k, 0)) \
  & = integral_(-infinity)^(infinity) dd(tensor(k, 0)) var((g(tensor(k, 0)))) theta(tensor(k, 0)) \
  & = sum_i theta(tensor(k, 0, -i))/(abs(g'(tensor(k, 0, -i)))) \
  & = 1/(2 omega) "."
$
Then we can take
$
  1/f(k) equiv 1/((2 pi)^3 2 omega)
$
and also introduce a new momentum differential
$
  tilde(d k) equiv frac(dd(k, 3), (2 pi)^3 2 omega) "."
$
Substituting both new quantities into the field equation, we would get the form
$
  phi(x) & = integral tilde(dd(k)) [a(vb(k)) e^(i tensor(k, mu) tensor(x, -mu)) + a^*(vb(k)) e^(- i tensor(k, mu) tensor(x, -mu))] \
  integral dd(x, 3) e^(-i k' x) phi(x) & = integral tilde(dd(k)) dd(x, 3) a(vb(k)) e^(i(k - k')x) + integral tilde(dd(k)) dd(x, 3) a^*(vb(k)) e^(- i (k + k') x) \
  & = integral tilde(dd(k)) dd(x, 3) e^(i (vb(k - k')) dotproduct vb(x)) e^(i (omega' - omega) t) a(vb(k)) + integral tilde(dd(k)) dd(x, 3) e^(-i (vb(k + k')) dotproduct vb(x)) e^(i (omega' + omega) t) a^*(vb(k)) \
  & = integral dd(k, 3)/(2 omega) var((vb(k) - vb(k)')) e^(i (omega' - omega) t) a(vb(k)) + integral dd(k, 3)/(2 omega) var((vb(k)' + vb(k))) e^(i (omega' + omega) t) a^*(vb(k)) \
  & = 1/(2 omega') a(vb(k)') + exp(2 i omega' t)/(2 omega') a^*(- vb(k)') "."
$
Because we have the on-shell condition, that is $omega = + sqrt(vb(k)^2 + m^2)$, the integration over 3D delta Dirac also forces $omega' = omega$. Changing the parameter again,
$
  integral dd(x, 3) e^(-i k x) phi(x) = 1/(2 omega) a(vb(k)) + exp(2 i omega t)/(2 omega) a^*(- vb(k)) "."
$
Let us take the 0-th derivative of field equation.
$
  tensor(partial, -0) phi(x) & = i omega integral tilde(dd(k)) [a(vb(k)) e^(i tensor(k, mu) tensor(x, -mu)) - a^*(vb(k)) e^(- i tensor(k, mu) tensor(x, -mu))] \
  integral dd(x, 3) e^(-i k x) tensor(partial, -0) phi(x) & = i/2 a(vb(k)) + (i exp(2 i omega t))/2 a(- vb(k)) "."
$
Now, we can combine both equation in order to express the coefficient $a$.
$
      a(vb(k)) & = integral dd(x, 3) exp(-i k x) [i tensor(partial, -0) phi(x) + omega phi(x)]"," \
  a^(*)(vb(k)) & = integral dd(x, 3) exp(i k x) [- i tensor(partial, -0) phi(x) + omega phi(x)]"."
$

We now can start generalizing the hamiltonian. Remember that the classical hamiltonian is
$
    H & = sum_i p_i dot(q)_i - L"," \
  p_i & = pdv(L, dot(q))","
$
where $p$ is the conjugate momentum and $q$ is the generalized coordinates. The proper generalization to field theory would be that the continuous $q$ is replaced by $phi(x)$ since our now lagrangian density is explicitly dependent on $phi$ and its derivative. Then we have hamiltonian density expressed as
$
  cal(H) & = Pi dot(phi) - cal(L)"," \
      Pi & = pdv(cal(L), dot(phi))"."
$

Let us find the hamiltonian from the previous lagrangian.
$
  Pi & = pdv(, dot(phi)) (-1/2 tensor(partial, mu) phi tensor(partial, -mu) phi - 1/2 m^2 phi^2) \
     & = pdv(, dot(phi)) (1/2 dot(phi)^2) \
     & = dot(phi)
$
$
  cal(H) & = dot(phi)^2 + 1/2 tensor(partial, mu) phi tensor(partial, -mu) phi + 1/2 m^2 phi^2 - Omega_0 \
         & = dot(phi)^2 - 1/2 dot(phi)^2 + 1/2 (grad phi)^2 + 1/2 m^2 phi^2 - Omega_0 \
         & = 1/2 dot(phi)^2 + 1/2 (grad phi)^2 + 1/2 m^2 phi^2 - Omega_0"."
$
Integrating over volume, we could get the hamiltonian in terms of $a(vb(k))$.
$
  H & = integral dd(x, 3) cal(H) \
    & = - Omega_0 V + 1/2 integral tilde(dd(k)) omega [a^*(vb(k)) a(vb(k)) + a(vb(k)) a^(*)(vb(k))] "."
$

We now can transform the theory from classical to quantum mechanical using *canonical quantization*.
$
  commute(phi(vb(x), t), phi(vb(x)', t)) & = 0 "," \
    commute(Pi(vb(x), t), Pi(vb(x)', t)) & = 0 "," \
   commute(phi(vb(x), t), Pi(vb(x)', t)) & = i var((vb(x) - vb(x)')) "." \
$

We now can find the commutation relation between the operators $a$. Rewritting operator $a(vb(k))$ using conjugate momentum, we get
$
  a(vb(k)) & = integral dd(x, 3) e^(i(omega t - vb(k dotproduct x))) [i Pi(vb(x), t) + omega phi(vb(x), t)] \
  conjugate(a)(vb(k')) & = integral dd(x', 3) e^(i(vb(k' dotproduct x') - omega t)) [-i Pi(vb(x)', t) + omega phi(vb(x)', t)] "."
$
Let us examine the commutation relation between nonconjugate operators with different momentum.
$
  commute(a(vb(k)), a(vb(k)')) & = integral dd(x, 3) dd(x', 3) e^(i(2 omega t - vb(k dotproduct x) - vb(k)' dotproduct vb(x)')) i omega (Pi phi' + phi Pi' - Pi' phi - phi' Pi) \
  & = integral dd(x, 3) dd(x', 3) e^(i(2 omega t - vb(k dotproduct x) - vb(k)' dotproduct vb(x)')) i omega (commute(Pi, phi') + commute(phi, Pi')) \
  & = integral dd(x, 3) dd(x', 3) e^(i(2 omega t - vb(k dotproduct x) - vb(k)' dotproduct vb(x)')) i omega (- i var((vb(x' - x))) + i var((vb(x - x')))) \
  & = 0 "."
$
Now, for the conjugate operators,
$
  commute(conjugate(a)(vb(k)), conjugate(a)(vb(k)')) & = integral dots (- Pi phi' - phi Pi' + Pi' phi + phi' Pi) \
                                                     & = 0 "."
$
Lastly, for the conjugate with nonconjugate operators
$
  commute(a(vb(k)), conjugate(a)(vb(k)')) & = integral dd(x, 3) dd(x', 3) e^(i (vb(k)' dotproduct vb(x)' - vb(k) dotproduct vb(x))) i omega (Pi phi' - phi Pi' + Pi' phi - phi' Pi) \
  & = integral dd(x, 3) dd(x', 3) e^(i (vb(k)' dotproduct vb(x)' - vb(k) dotproduct vb(x))) i omega (commute(Pi, phi') + [Pi', phi]) \
  & = integral dd(x, 3) dd(x', 3) e^(i (vb(k)' dotproduct vb(x)' - vb(k) dotproduct vb(x))) i omega (-2 i var((vb(x) - vb(x)'))) \
  & = 2 omega integral dd(x, 3) e^(i vb(x) dotproduct (vb(k)' - vb(k))) \
  & = 2 omega (2 pi)^3 var((vb(k) - vb(k)')) "."
$
Collecting them all, we get the commutation relations
$
                        commute(a(vb(k)), a(vb(k)')) & = 0 comma \
  commute(conjugate(a)(vb(k)), conjugate(a)(vb(k)')) & = 0 comma \
             commute(a(vb(k)), conjugate(a)(vb(k)')) & = 2 omega (2 pi)^3 var((vb(k) - vb(k)')) "."
$
Looking back at the integrated hamiltonian before,
$
  H & = - Omega_0 V + 1/2 integral tilde(dd(k)) omega {conjugate(a)(vb(k)), a(vb(k))} \
  & = -Omega_0 V + integral tilde(dd(k)) omega conjugate(a)(vb(k)) a(vb(k)) - 1/2 integral tilde(dd(k)) omega commute(conjugate(a)(vb(k)), a(vb(k))) \
  & = - Omega_0 V + integral tilde(dd(k)) omega conjugate(a)(vb(k)) a(vb(k)) + 1/2 integral frac(dd(k, 3), (2 pi)^3 2 omega) omega (2 omega (2 pi)^3 var((0))) \
  & = - Omega_0 V + integral tilde(dd(k)) omega conjugate(a)(vb(k)) a(vb(k)) + (2 pi)^3 var((0)) 1/2 integral frac(dd(k, 3), (2 pi)^3) omega \
  & = - Omega_0 V + integral tilde(dd(k)) omega conjugate(a)(vb(k)) a(vb(k)) + epsilon_0 V \
  & = (epsilon_0 - Omega_0) V + integral tilde(dd(k)) omega conjugate(a)(vb(k)) a(vb(k)) comma
$
where $epsilon_0$ is the integral over $k$-volume and V is $(2pi)^3 var((0))$. Let us examine the integration of $epsilon_0$ if we set the upper limit to some value of $Lambda$. Assuming that $Lambda >> m$,
$
  1/(2 (2pi)^3) integral dd(k, 3) omega & = 1/(2 (2pi)^3) 4 pi integral_0^(Lambda) omega r_k^2 dd(r_k) \
  & = 1/(4 pi^2) integral_0^(Lambda) omega (omega^2 - m^2) dd((omega^2 - m^2)^(1/2)) \
  & = 1/(4 pi^2) integral_0^(Lambda) omega^2 sqrt(omega^2 - m^2) dd(omega) \
  & = 1/(4 pi^2) 1/8 [Lambda (2 Lambda^2 - m^2) sqrt(Lambda^2 - m^2) - m^4 ln(frac(Lambda + sqrt(Lambda^2 - m^2), m))] \
  & approx frac(Lambda^4, 16 pi^2) "."
$
The justification of this approximation is that the formalism of quantum field will break down at certain large energy level. The $Lambda$ value is called the *ultraviolet cutoff*. But for now, it is sufficient to treat both $Omega_0$ and $epsilon_0$ as some arbitrary values. So we can even choose $Omega_0 = epsilon_0$ thus eliminating the first term in the hamiltionian. We now have *re-derived* the hamiltonian for free relativistic bosons. The parameter $m$ now can be seen as particle's mass instead of an arbitrary value.

Now, let us take a state of the form
$
  ket(k_1 dots k_n) equiv conjugate(a)(vb(k)_1) dots conjugate(a)(vb(k)_n) ket(0)
$
and the $ket(0)$ vacuum is annihilated by $a(vb(k)) ket(0)$. We can apply this to the quantum field hamiltonian that we have derived earlier.
$
  H ket(k_1 dots k_n) & = integral tilde(dd(k)) omega conjugate(a)(vb(k)) a(vb(k)) conjugate(a)(vb(k)_1) dots conjugate(a)(vb(k)_n) ket(0) \
  & = integral tilde(dd(k)) omega conjugate(a)(vb(k)) commute(a(vb(k)), conjugate(a)(vb(k)_1)) dots conjugate(a)(vb(k)_n) ket(0) + integral tilde(dd(k)) omega conjugate(a)(vb(k)) conjugate(a)(vb(k)_1) a(vb(k)) conjugate(a)(vb(k)_2) dots conjugate(a)(vb(k)_n) ket(0) \
  & = integral dd(k, 3) omega var((vb(k) - vb(k)_1)) conjugate(a)(vb(k)) conjugate(a)(vb(k)_2) dots conjugate(a)(vb(k)_n) ket(0) + integral tilde(dd(k)) omega conjugate(a)(vb(k)) conjugate(a)(vb(k)_1) a(vb(k)) conjugate(a)(vb(k)_2) dots conjugate(a)(vb(k)_n) ket(0) \
  & = omega_1 conjugate(a)(vb(k)_1) dots conjugate(a)(vb(k)_n) ket(0) + ... + omega_n conjugate(a)(vb(k)_1) dots conjugate(a)(vb(k)_n) ket(0) \
  & = (omega_1 + dots + omega_n) conjugate(a)(vb(k)_1) dots conjugate(a)(vb(k)_n) ket(0) \
  H ket(k_1 dots k_n) & = [sum_(i=1)^(n) omega_i] ket(k_1 dots k_n) "."
$
Thus, the state ket is an eigenstate of the hamiltonian.

Now, let us examine the Lorentz transformation of field equation again.
$
  U(Lambda)^(-1) phi(x) U(Lambda) & = phi(Lambda^(-1) x) \
  integral tilde(dd(k)) [U(Lambda)^(-1) a(vb(k)) U(Lambda) e^(i k x) + U(Lambda)^(-1) conjugate(a)(vb(k)) U(Lambda) e^(- i k x)] & = integral tilde(dd(k)) [a(vb(k)) e^(i k Lambda^(-1) x) + conjugate(a)(vb(k)) e^(- i k Lambda^(-1) x)] comma
$
let us examine the exponential part where $k$ is contracted with a transformed $x$.
$
  tensor(k, mu) tensor((Lambda^(-1) x), -mu) & = tensor(k, mu) tensor((Lambda^(-1)), nu, -mu) tensor(x, -nu) \
                                             & = tensor(Lambda, -mu, nu) tensor(k, mu) tensor(x, -nu) \
                                             & = tensor(Lambda, mu, -nu) tensor(k, -mu) tensor(x, nu) \
                                             & = tensor((Lambda k), -nu) tensor(x, nu) "."
$
Now, we set $k arrow Lambda^(-1) k'$.
$
  integral tilde(dd(k)) [U(Lambda)^(-1) a(vb(k)) U(Lambda) e^(i k x) + U(Lambda)^(-1) conjugate(a)(vb(k)) U(Lambda) e^(- i k x)] & = integral tilde(dd(k))' [a(Lambda^(-1) vb(k)') e^(i k' x) + conjugate(a)(Lambda^(-1) vb(k)') e^(- i k' x)]"."
$
Relabeling parameter $k'$ to $k$, we now have
$
  U(Lambda)^(-1) a(vb(k)) U(Lambda) = a(Lambda^(-1) vb(k)) \
  U(Lambda)^(-1) conjugate(a)(vb(k)) U(Lambda) = conjugate(a)(Lambda^(-1) vb(k))"."
$
Now, if we apply the unitary operator to the previous eigenstate,
$
  U(Lambda) ket(k_1 dots k_n) & = U(Lambda) conjugate(a)(vb(k)_1) dots conjugate(a)(vb(k)_n) ket(0)comma
$
Let us take a look at the transformation of the creation operator.
$
  U(Lambda)^(-1) conjugate(a)(vb(k)) U(Lambda) & = conjugate(a)(Lambda^(-1) vb(k)) \
  U(Lambda)^(-1) conjugate(a)(Lambda vb(q)) U(Lambda) & = conjugate(a)(vb(q)) \
  conjugate(a)(Lambda vb(q)) U(Lambda) & = U(Lambda) conjugate(a)(vb(q)) comma \
$
so,
$
  U(Lambda) ket(k_1 dots k_n) & = U(Lambda) conjugate(a)(vb(k)_1) dots conjugate(a)(vb(k)_n) ket(0) \
  & = conjugate(a)(Lambda vb(k)_1) dots conjugate(a)(Lambda vb(k)_n) U(Lambda) ket(0) \
  & = conjugate(a)(Lambda vb(k)_1) dots conjugate(a)(Lambda vb(k)_n) ket(0) \
  & = ket(Lambda k_1 dots Lambda k_n) "."
$