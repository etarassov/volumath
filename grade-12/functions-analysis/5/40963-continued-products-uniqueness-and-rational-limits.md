---
id: "40963"
title: "Produits continués : unicité, et le cas où la limite est rationnelle"
grade: 12
theme: functions-analysis
difficulty: 5
duration_min: 60
tags: [suites, produit, unicite, rationnels, partie-entiere, recurrence, suite-decroissante, contre-exemple]
adapted_from: null
see_also: ["40961", "40962"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2026, mathématiques"
  reference: "cg-2026-s-sujet.pdf, exercice 1 « Produits continués », partie 3 « Unicité et cas critique », questions 9 à 12"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2026-s-sujet.pdf"
---

## Statement

Soit $(a_k)_{k \in \mathbb{N}}$ une suite d'entiers tous supérieurs ou égaux à $2$. La suite
$$u_n = \left(1 - \frac{1}{a_0}\right)\left(1 - \frac{1}{a_1}\right) \cdots \left(1 - \frac{1}{a_{n-1}}\right) \qquad (u_0 = 1)$$
s'appelle la *suite des produits continués* associée à $(a_k)$. On admet les résultats suivants,
démontrés dans des parties précédentes.

- **(A)** La suite $(u_n)$ converge vers un réel de $[0\,;\,1[$, noté $P_\infty((a_k))$.
- **(B)** $P_\infty((k+2)_{k \in \mathbb{N}}) = 0$.
- **(C)** Pour tout entier $q \geqslant 1$, $P_\infty((q^{(2^k)} + 1)_{k \in \mathbb{N}}) = 1 - \frac{1}{q}$.
- **(D)** Pour tout $x \in [0\,;\,1[$, l'entier $a = \left\lfloor \frac{1}{1-x} \right\rfloor + 1$
  vérifie $a \geqslant 2$ et $1 - \frac{1}{a-1} \leqslant x < 1 - \frac{1}{a}$. Ici
  $\lfloor t \rfloor$ désigne la partie entière de $t$.
- **(E)** Pour tout $\ell \in [0\,;\,1[$, définissons $x_0 = \ell$ et, pour tout $k \geqslant 0$,
  $a_k = \left\lfloor \frac{1}{1 - x_k} \right\rfloor + 1$ et
  $x_{k+1} = \frac{x_k}{1 - 1/a_k}$. Alors les $x_k$ sont dans $[0\,;\,1[$,
  les $a_k$ sont des entiers supérieurs ou égaux à $2$, $\ell = P_\infty((a_k))$, et
  $a_{k+1} - 1 \geqslant (a_k - 1)^2$ pour tout $k$. C'est l'*algorithme glouton*.

Dans tout l'exercice, on fixe un réel $\ell \in [0\,;\,1[$.

1. Existe-t-il toujours une unique suite $(a_k)$ d'entiers supérieurs ou égaux à $2$ telle que
   $\ell = P_\infty((a_k))$ ?
2. Démontrer qu'il existe une unique suite $(a_k)$ d'entiers supérieurs ou égaux à $2$ telle que
   $\ell = P_\infty((a_k))$ et telle que, pour tout entier $k \geqslant 0$,
   $a_{k+1} - 1 \geqslant (a_k - 1)^2$.

On note désormais $(a_k)$ l'unique suite de la question 2.

3. Démontrer que, s'il existe un rang $k_0$ tel que $a_{k+1} - 1 = (a_k - 1)^2$ pour tout
   $k \geqslant k_0$, alors $\ell$ est rationnel.
4. Démontrer que, si $\ell$ est rationnel, alors il existe un rang $k_0$ tel que, pour tout
   $k \geqslant k_0$, $a_{k+1} - 1 = (a_k - 1)^2$.

## Hints

1. **Question 1.** Chercher un réel $\ell$ qui est la limite de deux produits continués
   différents parmi ceux de la liste (A) à (E).
2. **Question 2.** L'existence est déjà connue. Pour l'unicité, prendre une suite $(b_k)$ qui
   vérifie les deux conditions, et montrer d'abord que $b_0$ est forcément l'entier
   $a = \left\lfloor \frac{1}{1-\ell} \right\rfloor + 1$ de (D).
3. **Question 2.** Écrire $\ell = \left(1 - \frac{1}{b_0}\right)\ell'$, où $\ell'$ est la limite
   du produit continué de $(b_1, b_2, \ldots)$. L'inégalité $\ell < 1 - \frac{1}{b_0}$ vient de (A).
   Pour l'autre inégalité, il faut minorer $\ell'$.
4. **Question 2.** Avec $m = b_0 - 1$, la condition donne $b_k \geqslant m^{(2^k)} + 1$. Comparer
   le produit continué de $(b_1, b_2, \ldots)$ avec celui de (C) pour $q = m^2$.
5. **Question 3.** À partir du rang $k_0$, la suite $(a_k)$ est entièrement connue : elle est de
   la forme de (C).
6. **Question 4.** Les $x_k$ de l'algorithme glouton sont rationnels. Écrire
   $1 - x_k = \frac{s_k}{t_k}$ sous forme irréductible, et comparer $s_{k+1}$ à $s_k$.
7. **Question 4.** Une suite d'entiers strictement positifs qui ne croît jamais finit par être
   constante. Que se passe-t-il quand $s_{k+1} = s_k$ ?

## Solution

**1.** Non. Pour $\ell = 0$, la suite constante égale à $2$ convient, car
$u_n = \left(\frac{1}{2}\right)^n \to 0$ (c'est aussi (C) avec $q = 1$), et la suite
$(k + 2)$ convient aussi d'après (B). Ce sont deux suites différentes.

On peut aussi prendre $\ell = \frac{1}{2}$ : l'algorithme glouton donne $3, 5, 17, \ldots$, et
la suite $\left((k+2)^2\right)$, qui commence par $4$, a aussi $\frac{1}{2}$ pour limite : en
écrivant $1 - \frac{1}{m^2} = \frac{m-1}{m} \times \frac{m+1}{m}$, le produit se simplifie en
$\frac{n+2}{2(n+1)}$.

**Conclusion :** il n'y a pas unicité en général.

**2.** *Existence.* La suite $(a_k)$ fournie par l'algorithme glouton (E) convient.

*Un lemme.* Soit $(b_k)$ une suite d'entiers supérieurs ou égaux à $2$ telle que
$\lambda = P_\infty((b_k))$ et $b_{k+1} - 1 \geqslant (b_k - 1)^2$ pour tout $k$, où
$\lambda \in [0\,;\,1[$. Montrons que $b_0 = \left\lfloor \frac{1}{1-\lambda} \right\rfloor + 1$.

Notons $\lambda'$ la limite du produit continué de la suite décalée $(b_1, b_2, b_3, \ldots)$.
Le produit des $n + 1$ premiers facteurs de $(b_k)$ est $\left(1 - \frac{1}{b_0}\right)$ fois le
produit des $n$ premiers facteurs de la suite décalée, donc en passant à la limite

$$\lambda = \left(1 - \frac{1}{b_0}\right)\lambda'.$$

- D'après (A), $\lambda' < 1$, donc $\lambda < 1 - \frac{1}{b_0}$.
- Posons $m = b_0 - 1 \geqslant 1$. Si $m = 1$, l'inégalité
  $\lambda \geqslant 1 - \frac{1}{m} = 0$ est évidente. Si $m \geqslant 2$, montrons par
  récurrence que $b_k - 1 \geqslant m^{(2^k)}$ : c'est une égalité pour $k = 0$, et
  $b_{k+1} - 1 \geqslant (b_k - 1)^2 \geqslant \left(m^{(2^k)}\right)^2 = m^{(2^{k+1})}$.
  Avec $q = m^2$, on a donc $b_{j+1} \geqslant q^{(2^j)} + 1$ pour tout $j \geqslant 0$. Chaque
  facteur $1 - \frac{1}{b}$ croît avec $b$, donc chaque produit partiel de la suite décalée est
  au moins égal au produit partiel correspondant pour la suite $\left(q^{(2^j)} + 1\right)$.
  En passant à la limite et avec (C) :
$$\lambda' \geqslant 1 - \frac{1}{q} = 1 - \frac{1}{m^2}.$$
  Donc
$$\lambda \geqslant \frac{m}{m+1} \times \frac{(m-1)(m+1)}{m^2} = \frac{m-1}{m} = 1 - \frac{1}{b_0 - 1}.$$

Ainsi $1 - \frac{1}{b_0 - 1} \leqslant \lambda < 1 - \frac{1}{b_0}$. En passant aux inverses comme
dans (D), cela s'écrit $b_0 - 1 \leqslant \frac{1}{1 - \lambda} < b_0$, c'est-à-dire
$b_0 - 1 = \left\lfloor \frac{1}{1-\lambda} \right\rfloor$. Le lemme est démontré.

*Unicité.* Soit $(b_k)$ une suite qui vérifie les deux conditions pour $\ell$, et $(a_k)$, $(x_k)$
les suites de l'algorithme glouton. Montrons par récurrence sur $k$ la propriété : « $b_k = a_k$,
et la suite décalée $(b_k, b_{k+1}, \ldots)$ a pour limite de produit continué $x_k$ ».

Pour $k = 0$, la suite non décalée a pour limite $\ell = x_0$, et le lemme donne
$b_0 = \left\lfloor \frac{1}{1-x_0} \right\rfloor + 1 = a_0$.

Si c'est vrai au rang $k$, la limite $\lambda'$ de la suite $(b_{k+1}, b_{k+2}, \ldots)$ vérifie
$x_k = \left(1 - \frac{1}{b_k}\right)\lambda' = \left(1 - \frac{1}{a_k}\right)\lambda'$, donc
$\lambda' = x_{k+1}$. Cette suite décalée vérifie encore la condition
$b_{j+1} - 1 \geqslant (b_j - 1)^2$, et $x_{k+1} \in [0\,;\,1[$, donc le lemme donne
$b_{k+1} = \left\lfloor \frac{1}{1-x_{k+1}} \right\rfloor + 1 = a_{k+1}$.

**Conclusion :** la suite de l'algorithme glouton est la seule qui vérifie les deux conditions.

**3.** Posons $m = a_{k_0} - 1 \geqslant 1$. Par récurrence, $a_{k_0 + j} - 1 = m^{(2^j)}$ pour
tout $j \geqslant 0$. La suite décalée $(a_{k_0}, a_{k_0 + 1}, \ldots)$ est donc la suite
$\left(m^{(2^j)} + 1\right)_j$, dont le produit continué a pour limite $1 - \frac{1}{m}$
d'après (C). Comme dans la question 2,

$$\ell = \left(1 - \frac{1}{a_0}\right) \cdots \left(1 - \frac{1}{a_{k_0 - 1}}\right) \times \left(1 - \frac{1}{m}\right).$$

C'est un produit d'un nombre fini de rationnels.

**Conclusion :** $\ell$ est rationnel.

**4.** D'après la question 2, $(a_k)$ est la suite de l'algorithme glouton. Si $\ell$ est
rationnel, tous les $x_k$ le sont aussi (on passe de $x_k$ à $x_{k+1}$ par des opérations sur
des rationnels). Comme $0 < 1 - x_k \leqslant 1$, on peut écrire $1 - x_k = \frac{s_k}{t_k}$ avec
$s_k$, $t_k$ entiers strictement positifs et la fraction irréductible.

*Le numérateur ne croît pas.* Posons $m = a_k - 1$. Par (D),
$\frac{1}{m+1} < 1 - x_k \leqslant \frac{1}{m}$, c'est-à-dire

$$t_k < (m+1)s_k \qquad \text{et} \qquad m s_k \leqslant t_k .$$

Calculons $1 - x_{k+1}$. Comme $x_{k+1} = x_k \times \frac{m+1}{m}$ et $x_k = 1 - \frac{s_k}{t_k}$,

$$1 - x_{k+1} = \frac{m t_k - (m+1)(t_k - s_k)}{m t_k} = \frac{(m+1)s_k - t_k}{m t_k}.$$

Le numérateur $N = (m+1)s_k - t_k$ est un entier strictement positif (première inégalité), et
$N \leqslant s_k$ car $m s_k \leqslant t_k$ (seconde inégalité). Après simplification, le
numérateur irréductible $s_{k+1}$ divise $N$, donc $s_{k+1} \leqslant N \leqslant s_k$.

*La suite $(s_k)$ finit par être constante.* C'est une suite d'entiers strictement positifs qui ne
croît jamais. Elle ne peut décroître strictement qu'un nombre fini de fois (au plus $s_0 - 1$
fois), donc il existe un rang $k_0$ à partir duquel $s_{k+1} = s_k$.

*Conclusion.* Pour $k \geqslant k_0$, on a $s_k = s_{k+1} \leqslant N \leqslant s_k$, donc
$N = s_k$, c'est-à-dire $m s_k = t_k$, ou encore $1 - x_k = \frac{1}{m}$ exactement. Alors

$$x_{k+1} = \frac{m-1}{m} \times \frac{m+1}{m} = 1 - \frac{1}{m^2}, \qquad \frac{1}{1 - x_{k+1}} = m^2,$$

et $a_{k+1} = m^2 + 1$, soit $a_{k+1} - 1 = (a_k - 1)^2$.

**Conclusion :** si $\ell$ est rationnel, l'égalité $a_{k+1} - 1 = (a_k - 1)^2$ a lieu pour tout
$k \geqslant k_0$.

**Bilan.** Un réel $\ell \in [0\,;\,1[$ peut être la limite de plusieurs produits continués,
mais d'un seul qui vérifie $a_{k+1} - 1 \geqslant (a_k - 1)^2$ pour tout $k$ : celui de
l'algorithme glouton. Pour cette suite, $\ell$ est rationnel si et seulement si l'égalité
$a_{k+1} - 1 = (a_k - 1)^2$ a lieu à partir d'un certain rang.

## Going further

- Faire tourner l'algorithme glouton sur $\ell = \frac{5}{7}$ : on trouve $4, 22, 442, \ldots$
  À partir de quel rang a-t-on l'égalité ? Suivre les numérateurs $s_k$ au fur et à mesure.
- C'est l'analogue, pour les produits, du développement d'un réel en fraction continue, où un
  réel est rationnel exactement quand le développement s'arrête. Ici, le développement ne
  s'arrête jamais, mais il devient « automatique » à partir d'un certain rang.
