---
id: "40167"
title: "Couper un triangle en 2ⁿ morceaux : la plus grande somme des rayons inscrits"
grade: 12
theme: functions-analysis
difficulty: 5
duration_min: 60
tags: [cercle-inscrit, recurrence, inegalite-arithmetico-geometrique, optimisation, maximum, minimum, limite, exponentielle, logarithme, suites]
adapted_from: null
see_also: ["40162", "40163", "40164", "40165", "40166"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2006, mathématiques, série S"
  reference: "cg-2006-s-sujet.pdf, exercice 2, partie III, question 3 (a, b, c)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2006.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2006-s-sujet.pdf"
---

## Statement

Soit $ABC$ un triangle, $h$ la longueur de la hauteur issue de $A$ et $r$ le rayon du cercle
inscrit dans $ABC$. On admet les deux résultats suivants, démontrés dans des parties précédentes.

- **(R)** Si $D$ est un point de $[BC]$ distinct de $B$ et de $C$, et si $r_1$, $r_2$ sont les
  rayons des cercles inscrits dans $ABD$ et $ACD$, alors $(h - 2r_1)(h - 2r_2) = h\,(h - 2r)$.
- **(E)** Il existe un point $E$ de $[BC]$, distinct de $B$ et de $C$, tel que les cercles inscrits
  dans $ABE$ et $ACE$ aient le même rayon.

Ces résultats valent pour tout triangle. On rappelle aussi que le rayon inscrit d'un triangle est
strictement compris entre $0$ et la moitié de chacune de ses hauteurs.

Soit $n$ un entier naturel non nul et $N = 2^n$. On considère $N + 1$ points distincts
$D_0, D_1, \ldots, D_N$ placés dans cet ordre sur le segment $[BC]$, avec $D_0 = B$ et $D_N = C$.
Pour tout entier $i$ de $1$ à $N$, on note $r_i$ le rayon du cercle inscrit dans le triangle
$AD_{i-1}D_i$.

1. L'entier $n$ étant fixé, déterminer la valeur maximale de $r_1 + r_2 + \cdots + r_N$ quand les
   points $D_1, \ldots, D_{N-1}$ varient sur $[BC]$ en respectant les conditions ci-dessus. On
   montrera, par exemple par récurrence sur $n$, que ce maximum est atteint lorsque
   $r_1 = r_2 = \cdots = r_N$.
2. On note $u_n$ la valeur maximale trouvée à la question 1. Exprimer $u_n$ en fonction de $r$,
   $h$ et $n$. Montrer que la suite $(u_n)$ converge, et exprimer sa limite en fonction de $r$ et
   $h$.
3. On suppose que $8r \leq 3h$. L'entier $n$ étant fixé, déterminer la valeur minimale $v_n$ de
   $r_1^2 + r_2^2 + \cdots + r_N^2$. Montrer que la suite $(2^n v_n)$ converge.

## Hints

1. **Question 1.** Poser $t_i = 1 - \frac{2r_i}{h}$ et $t = 1 - \frac{2r}{h}$. Tous les triangles
   $AD_{i-1}D_i$ ont la même hauteur $h$ issue de $A$. Montrer, en appliquant (R) plusieurs fois,
   que $t_1 t_2 \cdots t_N = t$.
2. **Question 1.** On a $r_1 + \cdots + r_N = \frac{h}{2}(N - t_1 - \cdots - t_N)$ : il faut
   minimiser une somme de nombres positifs dont le produit est fixé. Montrer par récurrence sur $n$
   que $x_1 + \cdots + x_{2^n} \geq 2^n\,(x_1 \cdots x_{2^n})^{1/2^n}$, en coupant la somme en deux
   moitiés.
3. **Question 1.** Pour voir que le maximum est atteint, construire les points par récurrence :
   placer d'abord le point du milieu $D_{N/2}$ en $E$.
4. **Question 2.** Écrire $t^{1/N} = \mathrm{e}^{(\ln t)/N}$ et penser au nombre dérivé de la
   fonction exponentielle en $0$.
5. **Question 3.** Commencer par deux nombres : si $a, b \in\ ]0, 1[$ et $ab = c^2$ avec
   $c \geq \frac{1}{2}$, montrer que $(1 - a)^2 + (1 - b)^2 \geq 2(1 - c)^2$, en écrivant le membre de
   gauche avec $\sigma = a + b$.

## Solution

Posons $t = 1 - \frac{2r}{h}$ et $t_i = 1 - \frac{2r_i}{h}$ ; ces nombres sont dans $]0, 1[$.

**Étape préliminaire : $t_1 t_2 \cdots t_N = t$.** Plus généralement, montrons par récurrence sur
$k \geq 1$ que, pour des points $D_0 = B, D_1, \ldots, D_k$ dans cet ordre sur $[BC]$, le rayon
inscrit $\rho_k$ du triangle $AD_0D_k$ vérifie $1 - \frac{2\rho_k}{h} = t_1 \cdots t_k$. Pour
$k = 1$, c'est la définition de $t_1$. Si c'est vrai au rang $k$, appliquons (R) au triangle
$AD_0D_{k+1}$ (de hauteur $h$ issue de $A$) coupé par le point $D_k$ :
$$1 - \frac{2\rho_{k+1}}{h} = \left(1 - \frac{2\rho_k}{h}\right)\left(1 - \frac{2r_{k+1}}{h}\right) = t_1 \cdots t_k\, t_{k+1} .$$
Pour $k = N$, le triangle $AD_0D_N$ est $ABC$, d'où $t_1 \cdots t_N = t$.

**Lemme (moyennes).** Pour $n \geq 1$, $N = 2^n$ et des réels $x_1, \ldots, x_N$ strictement
positifs,
$$x_1 + \cdots + x_N \geq N\,(x_1 \cdots x_N)^{1/N},$$
avec égalité si et seulement si tous les $x_i$ sont égaux. (Ici $y^{1/N}$ désigne le réel positif
dont la puissance $N$-ième vaut $y$.)

*Pour $n = 1$* : $x_1 + x_2 - 2\sqrt{x_1x_2} = (\sqrt{x_1} - \sqrt{x_2})^2 \geq 0$, avec égalité
si et seulement si $x_1 = x_2$.

*Hérédité* : supposons le lemme vrai pour $N = 2^n$ et prenons $2N$ nombres. Notons $P_1$ le
produit des $N$ premiers et $P_2$ celui des $N$ derniers. D'après l'hypothèse de récurrence, puis
le cas $n = 1$,
$$x_1 + \cdots + x_{2N} \geq N\left(P_1^{1/N} + P_2^{1/N}\right) \geq 2N\,\left(P_1^{1/N} P_2^{1/N}\right)^{1/2} = 2N\,(P_1P_2)^{1/(2N)} .$$
Il y a égalité si et seulement si les $N$ premiers sont égaux entre eux, les $N$ derniers aussi, et
$P_1 = P_2$, c'est-à-dire si et seulement si les $2N$ nombres sont égaux.

**1.** On a
$$r_1 + \cdots + r_N = \sum_{i=1}^{N} \frac{h}{2}\,(1 - t_i) = \frac{h}{2}\,\big(N - (t_1 + \cdots + t_N)\big) .$$
D'après le lemme et l'étape préliminaire, $t_1 + \cdots + t_N \geq N\,t^{1/N}$, donc
$$r_1 + \cdots + r_N \leq \frac{h}{2}\,N\left(1 - t^{1/N}\right),$$
avec égalité si et seulement si tous les $t_i$ sont égaux, c'est-à-dire si et seulement si
$r_1 = \cdots = r_N$.

*Ce cas d'égalité se produit vraiment.* Montrons par récurrence sur $n$ que, dans tout triangle,
on peut placer les points pour que les $2^n$ rayons soient égaux. Pour $n = 1$, c'est (E). Si c'est
vrai au rang $n$, prenons un triangle $ABC$ et plaçons d'abord $D_N = E$ (avec maintenant
$2N = 2^{n+1}$ morceaux). Les triangles $ABE$ et $AEC$ ont le même rayon inscrit $\rho$, donc le
même nombre $s = 1 - \frac{2\rho}{h}$. On partage chacun d'eux en $N$ triangles de mêmes rayons
(hypothèse de récurrence) : dans chacun, d'après ce qui précède, les $N$ nombres $t_i$ valent
$s^{1/N}$. Les $2N$ rayons sont donc tous égaux.

**Conclusion :** la valeur maximale de $r_1 + \cdots + r_N$ est
$$u_n = \frac{h}{2}\,N\left(1 - t^{1/N}\right) = 2^{n-1}\,h\left(1 - \left(1 - \frac{2r}{h}\right)^{1/2^n}\right),$$
atteinte lorsque $r_1 = r_2 = \cdots = r_N$.

**2.** L'expression de $u_n$ vient d'être obtenue. Posons $\varepsilon_n = \frac{\ln t}{2^n}$, qui
tend vers $0$ quand $n$ tend vers $+\infty$, et qui est non nul car $0 < t < 1$. Alors
$t^{1/2^n} = \mathrm{e}^{\varepsilon_n}$ et
$$u_n = \frac{h}{2} \times 2^n\left(1 - \mathrm{e}^{\varepsilon_n}\right) = -\frac{h}{2}\,\ln t \times \frac{\mathrm{e}^{\varepsilon_n} - 1}{\varepsilon_n} .$$
Comme la fonction exponentielle est dérivable en $0$, de nombre dérivé $\mathrm{e}^0 = 1$, le
quotient $\frac{\mathrm{e}^{\varepsilon} - 1}{\varepsilon}$ tend vers $1$ quand $\varepsilon$ tend
vers $0$. Donc $(u_n)$ converge, et
$$\lim_{n \to +\infty} u_n = -\frac{h}{2}\,\ln\!\left(1 - \frac{2r}{h}\right) = \frac{h}{2}\,\ln\frac{h}{h - 2r} .$$

**3.** On suppose $8r \leq 3h$, c'est-à-dire $t \geq \frac{1}{4}$. On a
$r_1^2 + \cdots + r_N^2 = \frac{h^2}{4}\sum_{i=1}^{N}(1 - t_i)^2$.

*Cas de deux nombres.* Soit $a, b \in\ ]0, 1[$ avec $ab = c^2$, où $c \geq \frac{1}{2}$. Posons
$\sigma = a + b$ ; alors $\sigma \geq 2\sqrt{ab} = 2c \geq 1$ et
$$(1 - a)^2 + (1 - b)^2 = 2 - 2\sigma + \sigma^2 - 2c^2 = (\sigma - 1)^2 + 1 - 2c^2 .$$
Comme $\sigma - 1 \geq 2c - 1 \geq 0$, on a $(\sigma - 1)^2 \geq (2c - 1)^2$, d'où
$$(1 - a)^2 + (1 - b)^2 \geq (2c - 1)^2 + 1 - 2c^2 = 2c^2 - 4c + 2 = 2(1 - c)^2,$$
avec égalité si et seulement si $\sigma = 2c$, c'est-à-dire $a = b$.

*Récurrence.* Montrons que, pour $N = 2^n$ nombres $x_i \in\ ]0, 1[$ de produit $T \geq \frac{1}{4}$,
$$\sum_{i=1}^{N}(1 - x_i)^2 \geq N\left(1 - T^{1/N}\right)^2,$$
avec égalité si et seulement si tous les $x_i$ sont égaux. Pour $n = 1$, c'est le cas de deux
nombres avec $c = \sqrt{T} \geq \frac{1}{2}$. Supposons-le vrai pour $N = 2^n$, et prenons $2N$
nombres de produit $T \geq \frac{1}{4}$. Notons $T_1$ et $T_2$ les produits des $N$ premiers et des
$N$ derniers : $T_1T_2 = T$, et comme $T_2 < 1$, on a $T_1 > T \geq \frac{1}{4}$ ; de même
$T_2 > \frac{1}{4}$. L'hypothèse de récurrence donne
$$\sum_{i=1}^{2N}(1 - x_i)^2 \geq N\left[(1 - a)^2 + (1 - b)^2\right], \qquad a = T_1^{1/N},\ b = T_2^{1/N}.$$
On a $ab = T^{1/N} = c^2$ avec $c = T^{1/(2N)} \geq T^{1/2} \geq \frac{1}{2}$ (car $T \leq 1$).
Le cas de deux nombres donne $(1 - a)^2 + (1 - b)^2 \geq 2(1 - c)^2$, d'où le résultat au rang
$2N$. Le cas d'égalité se suit comme dans le lemme.

*Conclusion.* Avec $T = t \geq \frac{1}{4}$, on obtient
$r_1^2 + \cdots + r_N^2 \geq \frac{h^2}{4}\,N\left(1 - t^{1/N}\right)^2$, avec égalité quand tous les
rayons sont égaux, ce qui est possible d'après la question 1. Donc
$$v_n = \frac{h^2}{4}\,2^n\left(1 - t^{1/2^n}\right)^2 = \frac{u_n^2}{2^n} .$$
Ainsi $2^n v_n = u_n^2$, qui converge d'après la question 2 vers
$$\frac{h^2}{4}\left(\ln\!\left(1 - \frac{2r}{h}\right)\right)^2 .$$

**Bilan.** Le partage d'un triangle en $2^n$ morceaux depuis le sommet $A$ conserve le produit des
nombres $1 - \frac{2r_i}{h}$. L'inégalité entre moyenne arithmétique et moyenne géométrique, prouvée
par récurrence pour $2^n$ nombres, montre que la somme des rayons est la plus grande quand tous les
rayons sont égaux ; quand le nombre de morceaux tend vers l'infini, cette somme tend vers
$\frac{h}{2}\ln\frac{h}{h - 2r}$. Si $8r \leq 3h$, la somme des carrés est alors la plus petite.

## Going further

- Le lemme des moyennes est vrai pour un nombre quelconque $N$ de nombres, pas seulement pour une
  puissance de $2$. Pouvez-vous le déduire du cas $N = 2^n$ ? (Compléter la liste avec des copies de
  la moyenne géométrique.)
- Comparer la limite de $u_n$ avec $r$, en utilisant $\ln(1 + x) \leq x$ : la somme des rayons des
  petits cercles reste-t-elle bornée quand on coupe de plus en plus finement ?
- La première étape (deux morceaux) fait l'objet de l'exercice 40166.
