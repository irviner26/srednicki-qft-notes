#import "@preview/physica:0.9.8": *
#import "../helpers.typ": commute

= Lorentz Invariance

The set of all Lorentz transformation forms a _group_:
+ The product of any two Lorentz transformations is another Lorentz transformation,
+ The product is associative,
+ There is an identity transformation, $tensor(Lambda, +mu, -nu) = tensor(delta, +mu, -nu)$,
+ Every Lorentz transformation matrix has an inverse.

Let us look at the definition of Lorentz transformation in spacetime coordinate:
$
  macron(x)^mu = tensor(Lambda, +mu, -nu) x^nu "."
$
If we go back to matrix notation, to transform $x$ to $macron(x)$, we multiply the inverse of matrix $Lambda$ from the left side of the equation. So that in the end we would get
$
  x^mu = tensor((Lambda^(-1)), +mu, -nu) macron(x)^nu "."
$
The equivalent of this would be applying $tensor((Lambda^(-1)), +rho, -mu)$ to the Lorentz transformation definition.
$
  tensor((Lambda^(-1)), +rho, -mu) macron(x)^mu = tensor((Lambda^(-1)), +rho, -mu) tensor(Lambda, +mu, -nu) x^nu "."
$
So, in order to get the final expression, we must assert that
$
  tensor((Lambda^(-1)), +rho, -mu) tensor(Lambda, +mu, -nu) = tensor(delta, +rho, -nu) "."
$

Using that identity, we can go back to the identity between Lorentz transformaton and Minkowski metric to find how we can express the inverse of a Lorentz transformation in the form of a regular Lorentz matrix.
$
  tensor(g, -mu, -nu) tensor(Lambda, +mu, -rho) tensor(Lambda, +nu, -sigma) & = tensor(g, -rho, -sigma) \
  tensor(Lambda, -nu, -rho) tensor(Lambda, +nu, -sigma) & = tensor(g, -rho, -sigma) \
  tensor(Lambda, -nu, +mu) tensor(Lambda, +nu, -sigma) & = tensor(g, +mu, +rho) tensor(g, -rho, -sigma) \
  tensor(Lambda, -nu, +mu) tensor(Lambda, +nu, -sigma) = tensor(delta, +mu, -sigma) & arrow tensor(Lambda, -nu, +rho) tensor(Lambda, +nu, -sigma) = tensor(delta, +rho, -sigma) "." \
$
From the previous identity,
$
  tensor((Lambda^(-1)), +rho, -nu) = tensor(Lambda, -nu, +rho) = tensor(g, -alpha, -nu) tensor(g, +beta, + rho) tensor(Lambda, +alpha, -beta) quad arrow quad tensor((Lambda^(-1)), +mu, -nu) = tensor(Lambda, -nu, +mu) = tensor(g, -nu, -alpha) tensor(g, +mu, +beta) tensor(Lambda, +alpha, -beta)
$

We can also express
$
  tensor(g, -mu, -nu) tensor((Lambda^(-1)), +mu, -rho) tensor((Lambda^(-1)), +nu, -sigma) & = tensor(g, -rho, -sigma) \
  tensor(g, -mu, -nu) tensor(Lambda, -rho, +mu) tensor(Lambda, -sigma, +nu) & = tensor(g, -rho, -sigma) \
  tensor(g, -mu, -nu) tensor(g, -rho, -alpha) tensor(g, +mu, +beta) tensor(Lambda, +alpha, -beta) tensor(g, -sigma, -gamma) tensor(g, +nu, + epsilon) tensor(Lambda, +gamma, -epsilon) & = tensor(g, -rho, -sigma) \
  tensor(g, -rho, -alpha) tensor(g, -sigma, -gamma) (tensor(g, +beta, + mu) tensor(g, -mu, -nu)) tensor(g, +nu, +epsilon) tensor(Lambda, +alpha, -beta) tensor(Lambda, +gamma, -epsilon) & = tensor(g, -rho, -sigma) \
  tensor(g, -rho, -alpha) tensor(g, -sigma, -gamma) tensor(delta, +beta, -nu) tensor(g, +nu, +epsilon) tensor(Lambda, +alpha, -beta) tensor(Lambda, +gamma, -epsilon) & = tensor(g, -rho, -sigma) \
  tensor(g, -rho, -alpha) tensor(g, -sigma, -gamma) tensor(g, +beta, +epsilon) tensor(Lambda, +alpha, -beta) tensor(Lambda, +gamma, -epsilon) & = tensor(g, -rho, -sigma) "."
$
Then, we must assert that
$
  tensor(g, +beta, +epsilon) tensor(Lambda, +alpha, -beta) tensor(Lambda, +gamma, -epsilon) = tensor(g, +alpha, + gamma) quad arrow quad tensor(g, +mu, +nu) tensor(Lambda, +rho, -mu) tensor(Lambda, +sigma, -nu) = tensor(g, +rho, +sigma) ","
$
which is just the contravariant version for the Lorentz metric identity.

An infinitesimal Lorentz transformation can be written as
$
  tensor(Lambda, +mu, -nu) = tensor(delta, mu, -nu) + delta tensor(omega, mu, -nu) "."
$
Going back to the Lorentz metric identity, we will see the relation of $delta omega$ when the indices are swapped.
$
  tensor(g, -mu, -nu) (tensor(delta, mu, -rho) + delta tensor(omega, mu, -rho)) (tensor(delta, nu, -sigma) + delta tensor(omega, nu, -sigma)) & = tensor(g, -rho, -sigma) \
  tensor(g, -mu, -nu) (tensor(delta, mu, -rho) tensor(delta, nu, -sigma) + tensor(delta, mu, -rho) delta tensor(omega, nu, -sigma) + delta tensor(omega, mu, -rho) tensor(delta, nu, -sigma) + delta tensor(omega, mu, -rho) delta tensor(omega, nu, -sigma)) & = tensor(g, -rho, -sigma) \
  tensor(g, -rho, -sigma) + tensor(delta omega, -rho, -sigma) + tensor(delta omega, -sigma, -rho) + tensor(g, -mu, -nu) delta tensor(omega, mu, -rho) delta tensor(omega, nu, -sigma) & = tensor(g, -rho, -sigma) \
  tensor(delta omega, -rho, -sigma) & = - tensor(delta omega, -sigma, -rho) "."
$
Running the indices, we can see that there are six independent infinitesimal Lorentz transformation in spacetime coordinate (triangular parts of the matrix) and those are divided into three translations and three rotations.

Lorentz transformation are *proper* when the determinant of the matrix is equal to $+1$ and *improper* when the determinant is equal to $-1$. There is also another subgroup called the *orthochronous* Lorentz transformation. It's when the element $tensor(Lambda, +0, -0) >= +1$. A Lorentz transformation that can be obtained by compounding numbers of infinitesimal Lorentz transformation is called orthochronous and proper. In contrast of this, there are also nonorthochronous and improper Lorentz transformation such as
#grid(
  columns: (1fr, 1fr),
  gutter: 2em,
  $
    tensor(cal(P), +mu, -nu) = tensor((cal(P)^(-1)), +mu, -nu) = mat(
      +1, 0, 0, 0;
      0, -1, 0, 0;
      0, 0, -1, 0;
      0, 0, 0, -1
    )
  $,
  $
    tensor(cal(T), +mu, -nu) = tensor((cal(T)^(-1)), +mu, -nu) = mat(
      -1, 0, 0, 0;
      0, +1, 0, 0;
      0, 0, +1, 0;
      0, 0, 0, +1
    )
  $,
)

In quantum theory, symmetries are representated by unitary operators. For infinitesimal Lorentz transformation, we could write the unitary operator as
$
  U(1 + delta omega) = bb(1) + frac(i, 2 hbar) tensor(delta omega, -mu, -nu) tensor(M, mu, nu) ","
$
where $M$ is the generator of Lorentz group with it satisfying $tensor(M, mu, nu) = - tensor(M, nu, mu)$. Unitary operators have the composition rule which state that $U(Lambda' Lambda) = U(Lambda') U(Lambda)$. Taking $Lambda' = 1 + delta omega'$, we can expand $U(Lambda)^(-1) U(Lambda') U(Lambda) = U(Lambda^(-1) Lambda' Lambda)$ as
#grid(
  columns: (1fr, 1fr),
  gutter: 2em,
  $
    & U(Lambda)^(-1) U(Lambda') U(Lambda) \
    & = U(Lambda)^(-1) U(1 + delta omega') U(Lambda) \
    & = U(Lambda)^(-1) U(Lambda) + frac(i, 2 hbar) U(Lambda)^(-1) tensor(delta omega', -mu, -nu) tensor(M, +mu, +nu) U(Lambda) \
    & = bb(1) + frac(i, 2 hbar) U(Lambda)^(-1) tensor(delta omega', -mu, -nu) tensor(M, +mu, +nu) U(Lambda)
  $,
  $
    & Lambda^(-1) Lambda' Lambda \
    & = tensor((Lambda^(-1)), +mu, -rho) tensor((Lambda'), +rho, -sigma) tensor(Lambda, +sigma, -nu) \
    & = tensor(Lambda, -rho, +mu) tensor((Lambda'), +rho, -sigma) tensor(Lambda, +sigma, -nu) \
    & = tensor(g, -rho, -alpha) tensor(Lambda, +alpha, +mu) tensor((Lambda'), +rho, -sigma) tensor(Lambda, +sigma, -nu) \
    & = tensor((Lambda^(-1)), +mu, -rho) tensor(delta, +rho, -sigma) tensor(Lambda, +sigma, -nu) + tensor(g, -rho, -alpha) tensor(Lambda, +alpha, +mu) tensor((delta omega'), rho, -sigma) tensor(Lambda, +sigma, -nu) \
    & = tensor(delta, mu, -nu) + tensor(Lambda, +alpha, +mu) tensor((delta omega'), -alpha, -sigma) tensor(Lambda, +sigma, -nu) \
    & = tensor(delta, mu, -nu) + tensor(delta Omega, +mu, -nu) \
  $,
)
So,
$
  U(Lambda)^(-1) U(Lambda') U(Lambda) & = U(Lambda^(-1) Lambda' Lambda) \
  bb(1) + frac(i, 2 hbar) U(Lambda)^(-1) tensor(delta omega', -mu, -nu) tensor(M, +mu, +nu) U(Lambda) & = U(1 + delta Omega) \
  bb(1) + frac(i, 2 hbar) U(Lambda)^(-1) tensor(delta omega', -mu, -nu) tensor(M, +mu, +nu) U(Lambda) & = bb(1) + frac(i, 2 hbar) tensor(delta Omega, -mu, -nu) tensor(M, mu, nu) \
  U(Lambda)^(-1) tensor(delta omega', -mu, -nu) tensor(M, +mu, +nu) U(Lambda) & = tensor(Lambda, +mu, -alpha) tensor(Lambda, +nu, -beta) tensor(delta omega', -mu, -nu) tensor(M, alpha, beta) \
  U(Lambda)^(-1) tensor(M, +mu, +nu) U(Lambda) & = tensor(Lambda, +mu, -alpha) tensor(Lambda, +nu, -beta) tensor(M, alpha, beta) "." \
$
If we set $Lambda = 1 + delta omega$, we could get the commutation expression of Lorentz generators. Let us take a look at the LHS part of the last equation.
$
  U(Lambda)^(-1) tensor(M, +mu, +nu) U(Lambda) & = (bb(1) - frac(i, 2 hbar) tensor(delta omega, -alpha, -beta) tensor(M, alpha, beta)) tensor(M, mu, nu) (bb(1) + frac(i, 2 hbar) tensor(delta omega, -rho, -sigma) tensor(M, rho, sigma)) \
  & = tensor(M, mu, nu) + frac(i, 2 hbar) tensor(delta omega, -rho, -sigma) commute(tensor(M, mu, nu), tensor(M, rho, sigma)) + frac(1, 4 hbar^2) tensor(delta omega, -alpha, -beta) tensor(delta omega, -rho, -sigma) tensor(M, alpha, beta) tensor(M, mu, nu) tensor(M, rho, sigma)
$
Now, let's look at the RHS part.
$
  tensor(Lambda, +mu, -rho) tensor(Lambda, +nu, -sigma) tensor(M, rho, sigma) & = (tensor(delta, mu, -rho) + tensor(delta omega, mu, -rho)) (tensor(delta, nu, -sigma) + tensor(delta omega, nu, -sigma)) tensor(M, rho, sigma) \
  & = (tensor(delta, mu, -rho) tensor(delta, nu, -sigma) + tensor(delta, mu, -rho) tensor(delta omega, nu, -sigma) + tensor(delta omega, mu, -rho) tensor(delta, nu, -sigma) + tensor(delta omega, mu, -rho) tensor(delta omega, nu, -sigma)) tensor(M, rho, sigma) \
  & = tensor(M, mu, nu) + tensor(delta omega, nu, -beta) tensor(M, mu, beta) + tensor(delta omega, mu, -beta) tensor(M, beta, nu) + tensor(delta omega, mu, -rho) tensor(delta omega, nu, -sigma) tensor(M, rho, sigma) \
  & = tensor(M, mu, nu) + tensor(g, nu, alpha) tensor(delta omega, -alpha, -beta) tensor(M, mu, beta) + tensor(g, mu, alpha) tensor(delta omega, -alpha, -beta) tensor(M, beta, nu) - tensor(g, mu, sigma) tensor(g, nu, alpha) tensor(delta omega, -alpha, -beta) tensor(delta omega, -rho, -sigma) tensor(M, rho, beta)
$
If we equate both sides and the antisymmetric part of the $delta omega$ coefficients,
$
  frac(i, 2 hbar) tensor(delta omega, -rho, -sigma) commute(tensor(M, mu, nu), tensor(M, rho, sigma)) & = tensor(delta omega, -rho, -sigma) (tensor(g, nu, rho) tensor(M, mu, sigma) + tensor(g, mu, rho) tensor(M, sigma, nu)) \
  frac(i, 2 hbar) tensor(delta omega, -rho, -sigma) commute(tensor(M, mu, nu), tensor(M, rho, sigma)) & = frac(1, 2) tensor(delta omega, -rho, -sigma) (tensor(g, nu, rho) tensor(M, mu, sigma) + tensor(g, mu, rho) tensor(M, sigma, nu)) + frac(1, 2) tensor(delta omega, -rho, -sigma) (tensor(g, nu, rho) tensor(M, mu, sigma) + tensor(g, mu, rho) tensor(M, sigma, nu)) \
  frac(i, 2 hbar) tensor(delta omega, -rho, -sigma) commute(tensor(M, mu, nu), tensor(M, rho, sigma)) & = frac(1, 2) tensor(delta omega, -rho, -sigma) (tensor(g, nu, rho) tensor(M, mu, sigma) + tensor(g, mu, rho) tensor(M, sigma, nu)) - frac(1, 2) tensor(delta omega, -rho, -sigma) (tensor(g, nu, sigma) tensor(M, mu, rho) + tensor(g, mu, sigma) tensor(M, rho, nu)) \
  commute(tensor(M, mu, nu), tensor(M, rho, sigma)) & = i hbar (tensor(g, nu, sigma) tensor(M, mu, rho) + tensor(g, mu, sigma) tensor(M, rho, nu) - tensor(g, nu, rho) tensor(M, mu, sigma) - tensor(g, mu, rho) tensor(M, sigma, nu)) \
  & = i hbar (tensor(g, mu, rho) tensor(M, nu, sigma) - tensor(g, nu, rho) tensor(M, mu, sigma) + tensor(g, nu, sigma) tensor(M, mu, rho) - tensor(g, mu, sigma) tensor(M, nu, rho)) "."
$
These commutation relations specify the *Lie algebra* of Lorentz group. Let us take the angular momentum operator $tensor(J, -i) equiv frac(1, 2) tensor(epsilon, -i, -j, -k) tensor(M, j, k)$, so
$
  commute(tensor(J, -i), tensor(J, -j)) & = frac(1, 4) tensor(epsilon, -i, -a, -b) tensor(epsilon, -j, -c, -d) commute(tensor(M, a, b), tensor(M, c, d)) \
  & = frac(i hbar, 4) tensor(epsilon, -i, -a, -b) tensor(epsilon, -j, -c, -d) (tensor(delta, a, c) tensor(M, b, d) - tensor(delta, b, c) tensor(M, a, d) + tensor(delta, b, d) tensor(M, a, c) - tensor(delta, a, d) tensor(M, b, c)) \
  & = frac(i hbar, 4) (tensor(epsilon, -i, -c, -b) tensor(epsilon, -j, -c, -d) tensor(M, b, d) - tensor(epsilon, -i, -a, -c) tensor(epsilon, -j, -c, -d) tensor(M, a, d) + tensor(epsilon, -i, -a, -d) tensor(epsilon, -j, -c, -d) tensor(M, a, c) - tensor(epsilon, -i, -d, -b) tensor(epsilon, -j, -c, -d) tensor(M, b, c)) \
  & = frac(i hbar, 4) (tensor(epsilon, -c, -b, -i) tensor(epsilon, -c, -d, -j) tensor(M, b, d) - tensor(epsilon, -c, -i, -a) tensor(epsilon, -c, -d, -j) tensor(M, a, d) + tensor(epsilon, -d, -i, -a) tensor(epsilon, -d, -j, -c) tensor(M, a, c) - tensor(epsilon, -d, -b, -i) tensor(epsilon, -d, -j, -c) tensor(M, b, c)) ","
$
using the property of $tensor(epsilon, -i, -j, -k) tensor(epsilon, -i, -m, -n) = tensor(delta, -j, -m) tensor(delta, -k, -n) - tensor(delta, -j, -n) tensor(delta, -k, -m)$, we could get
$
  commute(tensor(J, -i), tensor(J, -j)) & = i hbar (tensor(M, b, b) tensor(delta, -i, -j) + tensor(M, i, j)) \
                                        & = i hbar tensor(M, i, j) "."
$
Inversing the definition of angular momentum to get the generator $M$,
$
  tensor(epsilon, -a, -b, -i) tensor(J, -i) & = 1/2 tensor(epsilon, -a, -b, -i) tensor(epsilon, -i, -j, -k) tensor(M, j, k) \
  & = 1/2 tensor(epsilon, -i, -a, -b) tensor(epsilon, -i, -j, -k) tensor(M, j, k) \
  & = 1/2 (tensor(delta, -a, -j) tensor(delta, -b, -k) - tensor(delta, -a, -k) tensor(delta, -b, -j)) tensor(M, j, k) \
  & = 1/2 (tensor(M, a, b) - tensor(M, b, a)) \
  tensor(M, a, b) & = tensor(epsilon, -a, -b, -k) tensor(J, -k) ","
$
substituting it back to the commutation relation, we get that
$
  commute(tensor(J, -i), tensor(J, -j)) & = i hbar tensor(epsilon, -i, -j, -k) tensor(J, -k) "."
$
Now, let us see how the angular momentum operator commutes with the boost operator $vb(K)$ with its definition as $K equiv tensor(M, i, 0)$. From the commutation relation of $M$, we multiply with $1/2 tensor(epsilon, -i, -a, -b)$ and then we set $c, d = j, 0$.
$
  commute(tensor(J, -i), tensor(K, -j)) & = 1/2 tensor(epsilon, -i, -a, -b) commute(tensor(M, a, b), tensor(M, j, 0)) \
  & = (i hbar)/2 tensor(epsilon, -i, -a, -b) (tensor(delta, a, j) tensor(M, b, 0) - tensor(delta, b, j) tensor(M, a, 0) + tensor(delta, b, 0) tensor(M, a, j) - tensor(delta, a, 0) tensor(M, b, j)) \
  & = (i hbar)/2 (tensor(epsilon, -i, -j, -b) tensor(K, -b) - tensor(epsilon, -i, -a, -j) tensor(K, a)) \
  & = (i hbar)/2 (tensor(epsilon, -i, -j, -b) tensor(K, -b) + tensor(epsilon, -i, -j, -a) tensor(K, a)) \
  & = i hbar tensor(epsilon, -i, -j, -k) tensor(K, -k) "."
$
Now, let's see how boost operator commutes with itself.
$
  commute(tensor(K, -i), tensor(K, -j)) & = commute(tensor(M, i, 0), tensor(M, j, 0)) \
  & = i hbar (tensor(delta, i, j) tensor(M, 0, 0) - tensor(g, 0, j) tensor(M, i, 0) + tensor(g, 0, 0) tensor(M, i, j) - tensor(g, i, 0) tensor(M, 0, j)) \
  & = - i hbar tensor(M, i, j) \
  & = - i hbar tensor(epsilon, -i, -j, -k) tensor(J, -k) "."
$
After we had the unitary transformation of a generator with two indices, we could generalize it for a generator with only one index. For example, momentum operator.
$
  U(Lambda)^(-1) tensor(P, mu) U(Lambda) & = tensor(Lambda, mu, -nu) tensor(P, nu) "."
$
We can also see the commutation relation of momentum and other operators.
$
  U(Lambda)^(-1) tensor(P, mu) U(Lambda) & = (bb(1) - frac(i, 2 hbar) tensor(delta omega, -alpha, -beta) tensor(M, alpha, beta)) tensor(P, mu) (bb(1) + frac(i, 2 hbar) tensor(delta omega, -rho, -sigma) tensor(M, rho, sigma)) \
  & = tensor(P, mu) + frac(i, 2 hbar) tensor(delta omega, -rho, -sigma) commute(tensor(P, mu), tensor(M, rho, sigma)) + dots ","
$
$
  tensor(Lambda, mu, -nu) tensor(P, nu) & = (tensor(delta, mu, -nu) + tensor(delta omega, mu, -nu)) tensor(P, nu) \
  & = tensor(P, mu) + tensor(g, mu, rho) tensor(delta omega, -rho, -sigma) tensor(P, sigma) ","
$
then,
$
  tensor(delta omega, -rho, -sigma) frac(i, 2 hbar) commute(tensor(P, mu), tensor(M, rho, sigma)) & = tensor(delta omega, -rho, -sigma) tensor(g, mu, rho) tensor(P, sigma) \
  & = 1/2 (tensor(delta omega, -rho, -sigma) tensor(g, mu, rho) tensor(P, sigma) + tensor(delta omega, -rho, -sigma) tensor(g, mu, rho) tensor(P, sigma)) \
  & = 1/2 tensor(delta omega, -rho, -sigma) (tensor(g, mu, rho) tensor(P, sigma) - tensor(g, mu, sigma) tensor(P, rho))
$
by equating the antisymmetric coefficients,
$
  commute(tensor(P, mu), tensor(M, rho, sigma)) = i hbar (tensor(g, mu, rho) tensor(P, sigma) - tensor(g, mu, sigma) tensor(P, rho)) "."
$
Let us multiply with the angular momentum factor.
$
  [tensor(J, -i), tensor(P, -j)] & = 1/2 tensor(epsilon, -i, -a, -b) commute(tensor(M, a, b), tensor(P, -j)) \
  & = (i hbar)/2 tensor(epsilon, -i, -a, -b) (tensor(delta, j, -b) tensor(P, -a) - tensor(delta, j, -a) tensor(P, -b)) \
  & = (i hbar)/2 (tensor(epsilon, -i, -a, -j) tensor(P, -a) - tensor(epsilon, -i, -j, -b) tensor(P, -b)) \
  & = - i hbar tensor(epsilon, -i, -j, -k) tensor(P, -k) "."
$
We can also see the commutation relation with hamiltonian $H$ or in another words, the zeroth component of momentum.
$
  commute(tensor(J, -i), tensor(P, 0)) = (i hbar)/2 tensor(epsilon, -i, -a, -b) (tensor(g, 0, b) tensor(P, a) - tensor(g, 0, a) tensor(P, b)) = 0 "."
$
Now, let's see the commutation relation between boost operator, momentum operator, and hamiltonian operator.
$
  commute(tensor(K, -i), tensor(P, -j)) = i hbar (tensor(g, j, 0) tensor(P, i) - tensor(g, j, i) tensor(P, 0)) = -i hbar tensor(delta, -i, -j) H "."
$
$
  commute(tensor(K, -i), H) = i hbar (tensor(g, 0, 0) tensor(P, i) - tensor(g, 0, i) tensor(P, 0)) = -i hbar tensor(P, -i) "."
$
The components of $P$ should be able to commute with each other
$
  commute(tensor(P, mu), tensor(P, nu)) = 0 "."
$
All of the commutation relation of operator that we have derived form the Lie algebra for the *Poincare group*.

Now let us consider the Lorentz transformation of a scalar quantum field. We can take the analogy straight from time dependent wave equation seen from the Heisenberg picture with futher relativistic generalization.
$
  exp(frac(-i P x, hbar)) phi(0) exp(frac(i P x, hbar)) = phi(x) "."
$
Define unitary spacetime translation operator as
$
  T(a) equiv exp(frac(-i tensor(P, mu) tensor(x, mu), hbar)) "."
$
Then we have
$
  T(a)^(-1) phi(x) T(a) = phi(x - a) "."
$
And for the infinitesimal translation
$
  T(delta a) = I - frac(i, hbar) tensor(delta a, -mu) tensor(P, mu) "."
$
Comparing the infinitesimal translation and the previous infinitesimal Lorentz transformation, with $macron(x) = Lambda^(-1) x$, Lorentz transformation of a scalar field equation will be
$
  U(Lambda)^(-1) phi(x) U(Lambda) = phi(Lambda^(-1) x) "."
$
What would happen if we apply derivative operator to the transformation.
$
  tensor(partial, mu) [U(Lambda)^(-1) phi(x) U(Lambda)] & = U(Lambda)^(-1) tensor(partial, mu) phi(x) U(Lambda) \
                                                        & = tensor(partial, mu) phi(Lambda^(-1) x) "."
$
Let us examine the derivative operator first. If we have the transformation $macron(x) = Lambda^(-1) x$ then, like we have seen in the first chapter that the derivatives follow.
$
  tensor(macron(partial), mu) & = tensor((Lambda^(-1)), mu, -nu) tensor(partial, nu) \
          tensor(partial, mu) & = tensor(Lambda, mu, -nu) tensor(macron(partial), nu) "."
$
So, no we have
$
  U(Lambda)^(-1) tensor(partial, mu) phi(x) U(Lambda) & = tensor(Lambda, mu, -nu) tensor(macron(partial), nu) phi(Lambda^(-1) x) "."
$
If we contract the derivative operator with another derivative operator, we will get
$
  U(Lambda)^(-1) tensor(partial, -mu) tensor(partial, mu) phi(x) U(Lambda) & = tensor(partial, -mu) tensor(Lambda, mu, -nu) tensor(macron(partial), nu) phi(Lambda^(-1) x) "."
$
We first can lower the indices of the derivative transformation.
$
  tensor(g, -rho, -mu) tensor(partial, mu) & = tensor(g, -rho, -mu) tensor(Lambda, mu, -nu) tensor(macron(partial), nu) \
  tensor(partial, -rho) & = tensor(Lambda, -rho, -nu) tensor(g, nu, sigma) tensor(macron(partial), -sigma) \
  & = tensor(Lambda, -rho, sigma) tensor(macron(partial), -sigma) \
  & = tensor((Lambda^(-1)), sigma, -rho) tensor(macron(partial), -sigma)
$
so,
$
  U(Lambda)^(-1) tensor(partial, -mu) tensor(partial, mu) phi(x) U(Lambda) & = tensor((Lambda^(-1)), sigma, -mu) tensor(macron(partial), -sigma) tensor(Lambda, mu, -nu) tensor(macron(partial), nu) phi(Lambda^(-1) x) \
  & = tensor(delta, sigma, -nu) tensor(macron(partial), -sigma) tensor(macron(partial), nu) phi(Lambda^(-1) x) \
  & = tensor(macron(partial), -mu) tensor(macron(partial), mu) phi(Lambda^(-1) x) "."
$
Now, we can see that the Klein-Gordon equation is invariant under Lorentz transformation.
$
  U(Lambda)^(-1) ( - tensor(partial, -mu) tensor(partial, mu) + frac(m^2, hbar^2 c^2)) phi(x) U(Lambda) = (- tensor(macron(partial), -mu) tensor(macron(partial), mu) + frac(m^2, hbar^2 c^2)) phi(Lambda^(-1) x) "."
$
Now, we will see what would happen if we take infinitesimal Lorentz transformation for the scalar field.
$
  U(Lambda)^(-1) phi(x) U(Lambda) & = (bb(1) - frac(i, 2hbar) tensor(delta omega, -mu, -nu) tensor(M, mu, nu)) phi(x) (bb(1) + frac(i, 2hbar) tensor(delta omega, -alpha, -beta) tensor(M, alpha, beta)) \
  & = phi(x) + frac(i, 2 hbar) tensor(delta omega, -mu, -nu) commute(phi(x), tensor(M, mu, nu)) + dots \
$
$
  phi(tensor((Lambda^(-1)), mu, -nu) x^nu) & = phi(tensor(Lambda, -nu, mu) tensor(x, nu)) \
  & = phi(x) + (tensor(Lambda, -nu, +mu) tensor(x, nu) - tensor(x, mu)) tensor(partial, -mu) phi(x) \
  & = phi(x) + tensor(delta omega, -nu, mu) tensor(x, nu) tensor(partial, -mu) phi(x) \
  & = phi(x) + tensor(delta omega, -nu, -mu) tensor(x, nu) tensor(partial, mu) phi(x) "."
$
Now, if we equate both sides,
$
  frac(i, 2 hbar) tensor(delta omega, -mu, -nu) commute(phi(x), tensor(M, mu, nu)) & = tensor(delta omega, -nu, -mu) tensor(x, nu) tensor(partial, mu) phi(x) \
  & = frac(1, 2) (tensor(delta omega, -nu, -mu) tensor(x, nu) tensor(partial, mu) phi(x) + tensor(delta omega, -nu, -mu) tensor(x, nu) tensor(partial, mu) phi(x)) \
  frac(i, hbar) tensor(delta omega, -mu, -nu) commute(phi(x), tensor(M, mu, nu)) & = tensor(delta omega, -mu, -nu) tensor(x, mu) tensor(partial, nu) phi(x) + tensor(delta omega, -nu, -mu) tensor(x, nu) tensor(partial, mu) phi(x) \
  commute(phi(x), tensor(M, mu, nu)) & = frac(hbar, i) [tensor(x, mu) tensor(partial, nu) - tensor(x, nu) tensor(partial, mu)] phi(x) \
$
if we then define $tensor(cal(L), mu, nu) = frac(hbar, i) [tensor(x, mu) tensor(partial, nu) - tensor(x, nu) tensor(partial, mu)]$,
$
  commute(phi(x), tensor(M, mu, nu)) = tensor(cal(L), mu, nu) phi(x) "."
$
Let us examine another commutation relation
$
  commute(commute(phi(x), tensor(M, mu, nu)), tensor(M, rho, sigma)) & = commute(tensor(cal(L), mu, nu) phi(x), tensor(M, rho, sigma)) \
  & = tensor(cal(L), mu, nu) commute(phi(x), tensor(M, rho, sigma)) + commute(tensor(cal(L), mu, nu), tensor(M, rho, sigma)) phi(x) \
  & = tensor(cal(L), mu, nu) tensor(cal(L), rho, sigma) phi(x) + commute(tensor(cal(L), mu, nu), tensor(M, rho, sigma)) phi(x) \
  & = tensor(cal(L), mu, nu) tensor(cal(L), rho, sigma) phi(x) + tensor(cal(L), mu, nu) tensor(M, rho, sigma) phi(x) - tensor(M, rho, sigma) tensor(cal(L), mu, nu) phi(x) \
  & = tensor(cal(L), mu, nu) tensor(cal(L), rho, sigma) phi(x) + tensor(M, rho, sigma) tensor(cal(L), mu, nu) phi(x) - tensor(M, rho, sigma) tensor(cal(L), mu, nu) phi(x) \
  & = tensor(cal(L), mu, nu) tensor(cal(L), rho, sigma) phi(x) "."
$
Using the Jacobi identity, that is, $commute(commute(A, B), C) + commute(commute(B, C), A) + commute(commute(C, A), B) = 0$, we could examine
$
  commute(phi(x), commute(tensor(M, mu, nu), tensor(M, rho, sigma))) & = commute(commute(tensor(M, rho, sigma), psi(x)), tensor(M, mu, nu)) + commute(commute(psi(x), tensor(M, mu, nu)), tensor(M, rho, sigma)) \
  & = commute(tensor(cal(L), mu, nu) phi(x), tensor(M, rho, sigma)) - commute(tensor(cal(L), rho, sigma) phi(x), tensor(M, mu, nu)) \
  & = tensor(cal(L), mu, nu) tensor(cal(L), rho, sigma) phi(x) - tensor(cal(L), rho, sigma) tensor(cal(L), mu, nu) phi(x) \
  & = (tensor(cal(L), mu, nu) tensor(cal(L), rho, sigma) - tensor(cal(L), rho, sigma) tensor(cal(L), mu, nu)) phi(x) "."
$
Before we start to expand the right hand side, let it be known that
$
  tensor(partial, alpha) (tensor(x, beta) tensor(partial, gamma)) & = (tensor(partial, alpha) tensor(x, beta)) tensor(partial, gamma) + tensor(x, beta) tensor(partial, alpha) tensor(partial, beta) \
  & = tensor(g, alpha beta) tensor(partial, gamma) + tensor(x, beta) tensor(partial, alpha) tensor(partial, gamma) "."
$
$
  tensor(cal(L), mu, nu) tensor(cal(L), rho, sigma) phi(x) & = - hbar^2 (tensor(x, mu) tensor(partial, nu) - tensor(x, nu) tensor(partial, mu)) (tensor(x, rho) tensor(partial, sigma) - tensor(x, sigma) tensor(partial, rho)) psi(x) \
  & = - hbar^2 (tensor(x, mu) tensor(partial, nu) tensor(x, rho) tensor(partial, sigma) - tensor(x, mu) tensor(partial, nu) tensor(x, sigma) tensor(partial, rho) - tensor(x, nu) tensor(partial, mu) tensor(x, rho) tensor(partial, sigma) + tensor(x, nu) tensor(partial, mu) tensor(x, sigma) tensor(partial, rho)) phi(x) \
  & = -hbar^2 (tensor(g, nu, rho) tensor(x, mu) tensor(partial, sigma) + tensor(x, mu) tensor(x, rho) tensor(partial, nu) tensor(partial, sigma) - tensor(g, nu, sigma) tensor(x, mu) tensor(partial, rho) - tensor(x, mu) tensor(x, sigma) tensor(partial, nu) tensor(partial, rho) \
    & - tensor(g, mu, rho) tensor(x, nu) tensor(partial, sigma) - tensor(x, nu) tensor(x, rho) tensor(partial, mu) tensor(partial, sigma) + tensor(g, mu, sigma) tensor(x, nu) tensor(partial, rho) + tensor(x, nu) tensor(x, sigma) tensor(partial, mu) tensor(partial, rho)) phi(x) "."
$
$
  - tensor(cal(L), rho, sigma) tensor(cal(L), mu, nu) phi(x) & = hbar^2 (tensor(g, sigma, mu) tensor(x, rho) tensor(partial, nu) + tensor(x, rho) tensor(x, mu) tensor(partial, sigma) tensor(partial, nu) - tensor(g, sigma, nu) tensor(x, rho) tensor(partial, mu) - tensor(x, rho) tensor(x, nu) tensor(partial, sigma) tensor(partial, mu) \
    & - tensor(g, rho, mu) tensor(x, sigma) tensor(partial, nu) - tensor(x, sigma) tensor(x, mu) tensor(partial, rho) tensor(partial, nu) + tensor(g, rho, nu) tensor(x, sigma) tensor(partial, mu) + tensor(x, sigma) tensor(x, nu) tensor(partial, rho) tensor(partial, mu)) phi(x) "."
$
So,
$
  & tensor(cal(L), mu, nu) tensor(cal(L), rho, sigma) - tensor(cal(L), rho, sigma) tensor(cal(L), mu, nu) \
  & = i hbar (tensor(g, mu, rho) tensor(cal(L), nu, sigma) - tensor(g, nu rho) tensor(cal(L), mu, sigma) - tensor(g, mu, sigma) tensor(cal(L), nu, rho) + tensor(g, nu, sigma) tensor(cal(L), mu, rho)) "."
$
Then,
$
  commute(phi(x), commute(tensor(M, mu, nu), tensor(M, rho, sigma))) & = (tensor(cal(L), mu, nu) tensor(cal(L), rho, sigma) - tensor(cal(L), rho, sigma) tensor(cal(L), mu, nu)) phi(x) \
  & = i hbar (tensor(g, mu, rho) tensor(cal(L), nu, sigma) - tensor(g, nu rho) tensor(cal(L), mu, sigma) - tensor(g, mu, sigma) tensor(cal(L), nu, rho) + tensor(g, nu, sigma) tensor(cal(L), mu, rho)) phi(x) \
  & = i hbar (tensor(g, mu, rho) commute(psi(x), tensor(M, nu, sigma))- tensor(g, nu rho) commute(psi(x), tensor(M, mu, sigma)) - tensor(g, mu, sigma) commute(psi(x), tensor(M, nu, rho)) + tensor(g, nu, sigma) commute(psi(x), tensor(M, mu, rho))) \
    & = commute(phi(x), i hbar (tensor(g, mu, rho) tensor(M, nu, sigma) - tensor(g, nu rho) tensor(M, mu, sigma) - tensor(g, mu, sigma) tensor(M, nu, rho) + tensor(g, nu, sigma) tensor(M, mu, rho))) "."
$
Let us write 
$
  tensor(Lambda, rho, -tau) = tensor(delta, rho, -tau) + frac(i, 2 hbar) tensor(delta omega, -mu, -nu) tensor((tensor(S_V, mu, nu)), rho, -tau) ","
$
where
$
  tensor((tensor(S_V, mu, nu)), rho, -tau) equiv frac(hbar, i) (tensor(g, mu, rho) tensor(delta, nu, -tau) - tensor(g, nu, rho) tensor(delta, mu, -tau))
$
are matrices which constitute the vector representation of the Lorentz generators. Then we examine the transformation of field function derivative using infinitesimal Lorentz transformation.
$
  U(Lambda)^(-1) tensor(partial, mu) phi(x) U(Lambda) & = (bb(1) - frac(i, 2 hbar) tensor(delta omega, -alpha, -beta) tensor(M, alpha, beta)) tensor(partial, mu) phi(x) (bb(1) + frac(i, 2 hbar) tensor(delta omega, -rho, -sigma) tensor(M, rho, sigma)) \
  & = tensor(partial, mu) phi(x) + frac(i, 2 hbar) tensor(delta omega, -alpha, -beta) commute(tensor(partial, mu) phi(x), tensor(M, alpha, beta)) + dots
$
$
  tensor(partial, mu) phi(Lambda^(-1) x) & = tensor(partial, mu) phi(tensor(Lambda, -sigma, rho) tensor(x, sigma)) \
  & = tensor(partial, mu) (phi(x) + (tensor(Lambda, -sigma, rho) tensor(x, sigma) - tensor(x, rho)) tensor(partial, -rho) phi(x)) \
  & = tensor(partial, mu) (phi(x) + frac(i, 2 hbar) tensor(delta omega, -alpha, - beta) tensor((tensor(S, alpha, beta)), -sigma, rho) tensor(x, sigma) tensor(partial, -rho) phi(x)) \
  & = tensor(partial, mu) phi(x) + frac(i, 2 hbar) tensor(delta omega, -alpha, - beta) tensor((tensor(S, alpha, beta)), -sigma, rho) tensor(partial, mu) (tensor(x, sigma) tensor(partial, -rho) phi(x)) \
  & = tensor(partial, mu) phi(x) + frac(i, 2 hbar) tensor(delta omega, -alpha, - beta) tensor((tensor(S, alpha, beta)), -sigma, rho) (tensor(g, mu, sigma) tensor(partial, -rho) psi(x) + tensor(x, sigma) tensor(partial, mu) tensor(partial, -rho) psi(x)) \
  & = tensor(partial, mu) phi(x) + frac(i, 2 hbar) tensor(delta omega, -alpha, - beta) (tensor((tensor(S, alpha, beta)), mu, -rho) tensor(partial, rho) psi(x) + frac(hbar, i) [tensor(g, alpha, sigma) tensor(delta, beta, -rho) - tensor(g, beta, sigma) tensor(delta, alpha, -rho)] tensor(x, -sigma) tensor(partial, rho) tensor(partial, mu) psi(x)) \
  & = tensor(partial, mu) phi(x) + frac(i, 2 hbar) tensor(delta omega, -alpha, - beta) (tensor((tensor(S, alpha, beta)), mu, -rho) tensor(partial, rho) psi(x) + frac(hbar, i) [tensor(x, alpha) tensor(partial, beta) - tensor(x, beta) tensor(partial, alpha)] tensor(partial, mu) psi(x)) \
  & = tensor(partial, mu) phi(x) + frac(i, 2 hbar) tensor(delta omega, -alpha, - beta) (tensor((tensor(S, alpha, beta)), mu, -rho) tensor(partial, rho) psi(x) + tensor(cal(L), alpha, beta) tensor(partial, mu) psi(x)) "."
$
So,
$
  commute(tensor(partial, mu) phi(x), tensor(M, alpha, beta)) = tensor((tensor(S, alpha, beta)), mu, -rho) tensor(partial, rho) psi(x) + tensor(cal(L), alpha, beta) tensor(partial, mu) psi(x) "."
$
Let us examine how the matrix $S$ commutes with each other.
$
  tensor(commute(tensor(S, mu, nu), tensor(S, alpha, beta)), rho, -sigma) & = tensor((tensor(S, mu, nu)), rho, -tau) tensor((tensor(S, alpha, beta)), tau, -sigma) - tensor((tensor(S, alpha, beta)), rho, -tau) tensor((tensor(S, mu, nu)), tau, -sigma) \
  & = - hbar^2 (tensor(g, mu, rho) tensor(delta, nu, -tau) - tensor(g, nu, rho) tensor(delta, mu, -tau)) (tensor(g, alpha, tau) tensor(delta, beta, -sigma) - tensor(g, beta, tau) tensor(delta, alpha, -sigma)) + hbar^2 (tensor(g, alpha, rho) tensor(delta, beta, -tau) - tensor(g, beta, rho) tensor(delta, alpha, -tau)) (tensor(g, mu, tau) tensor(delta, nu, -sigma) - tensor(g, nu, tau) tensor(delta, mu, -sigma)) \
  & = - i hbar (tensor(g, mu, rho) tensor((tensor(S, alpha, beta)), nu, -sigma) - tensor(g, nu, rho) tensor((tensor(S, alpha, beta)), mu, -sigma)) + i hbar (tensor(g, alpha, rho) tensor((tensor(S, mu, nu)), beta, -sigma) - tensor(g, beta, rho) tensor((tensor(S, mu, nu)), alpha, -sigma)) \
  & = i hbar (tensor(g, alpha, rho) tensor((tensor(S, mu, nu)), beta, -sigma) - tensor(g, beta, rho) tensor((tensor(S, mu, nu)), alpha, -sigma) - tensor(g, mu, rho) tensor((tensor(S, alpha, beta)), nu, -sigma) + tensor(g, nu, rho) tensor((tensor(S, alpha, beta)), mu, -sigma))
$