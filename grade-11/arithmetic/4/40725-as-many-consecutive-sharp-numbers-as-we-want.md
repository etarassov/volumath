---
id: "40725"
title: "Autant de nombres pointus consécutifs que l'on veut"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [nombres-premiers, entiers-consecutifs, principe-des-tiroirs, ensembles, limite, disjonction-de-cas, puissances-de-2]
adapted_from: null
see_also: ["40721", "40722", "40723", "40724"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2020, mathématiques, série S"
  reference: "cg-2020-s-sujet.pdf, problème 1 « Nombres pointus », partie IV « Beaucoup de nombres pointus », questions 14 à 18. Les résultats des parties précédentes sont admis, celui de la partie III sur l'ensemble A sous une forme sans logarithme."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2020.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2020-s-sujet.pdf"
---

## Statement

Un entier $a \geq 1$ est **pointu** s'il a au plus un facteur premier, ou bien si, en notant $p$ et
$q$ ses deux plus grands facteurs premiers, avec $p > q$, on a $p \geq 2q$. Par exemple
$147 = 3 \times 7^2$ est pointu car $7 \geq 2 \times 3$, mais $105 = 3 \times 5 \times 7$ ne l'est pas
car $7 < 2 \times 5$.

Le but est de démontrer la propriété $\mathcal{P}$ suivante : *pour tout entier $m \geq 1$, il
existe un entier $n \geq 0$ tel que les $m$ nombres $n + 1, n + 2, \ldots, n + m$ soient tous
pointus.*

On utilise les ensembles suivants.

- Pour tout entier $k \geq 1$, $\mathbb{P}_{2^k}$ est l'ensemble des nombres premiers $p$ tels que
  $2^k + 1 \leq p \leq 2^{k+1}$.
- $B_{k,1}$ est l'ensemble des entiers $a \geq 1$ qui ont au moins un facteur premier dans
  $\mathbb{P}_{2^k}$, et $B_{k,2}$ celui des entiers $a \geq 1$ qui ont au moins deux facteurs
  premiers différents dans $\mathbb{P}_{2^k}$.
- Pour tout entier $k \geq 2$, $C_k = (B_{k-1,1} \cap B_{k,1}) \cup B_{k,2}$.
- Pour tout entier $\ell \geq 2$, $D_\ell$ est l'ensemble des entiers qui appartiennent à au moins
  l'un des ensembles $C_k$ avec $k \geq \ell$.
- Pour tout entier $\ell \geq 1$, $A_\ell$ est l'ensemble des entiers $a \geq 1$ dont tous les
  facteurs premiers sont inférieurs ou égaux à $2^\ell$.

On admet les deux résultats suivants.

- **(R1)** Pour tous entiers $\ell \geq 2$ et $N \geq 2$, l'ensemble $D_\ell$ a au plus
  $\frac{8N}{\ell - 1}$ éléments entre $1$ et $N$.
- **(R2)** Pour tout entier $\ell \geq 1$, si l'on note $a_\ell(N)$ le nombre d'éléments de $A_\ell$
  entre $1$ et $N$, alors $\frac{a_\ell(N)}{N}$ tend vers $0$ quand $N$ tend vers $+\infty$.

Dans toute la suite, on fixe un entier $m \geq 1$.

1. Démontrer qu'il existe un entier $\ell \geq 2$ tel que, pour tout entier $n \geq 1$, l'ensemble
   $D_\ell$ a au plus $n$ éléments entre $1$ et $3mn$.

   Dans la suite, $\ell$ désigne un tel entier.

2. Soit $a \geq 1$ un entier qui n'est pas pointu. Démontrer que $a$ appartient à $A_\ell$ ou à
   $D_\ell$.
3. Démontrer qu'il existe un entier $n \geq 1$ tel que l'ensemble $A_\ell$ a au plus $n$ éléments
   entre $1$ et $3mn$.
4. Avec un tel $n$, démontrer qu'il existe un entier $k$ tel que $0 \leq k \leq 2n$ et que les
   entiers $mk + 1, mk + 2, \ldots, m(k+1)$ soient tous pointus.
5. Démontrer la propriété $\mathcal{P}$.

## Hints

1. **Question 1.** Chercher $\ell$ pour que la borne de (R1), avec $N = 3mn$, soit égale à $n$.
2. **Question 2.** Si $a$ n'est pas pointu, il a deux plus grands facteurs premiers $p > q$, avec
   $p < 2q$. Séparer les cas $p \leq 2^\ell$ et $p > 2^\ell$.
3. **Question 2.** Si $p > 2^\ell$, choisir l'entier $k$ tel que $2^k < p \leq 2^{k+1}$. Pourquoi
   a-t-on $k \geq \ell$ ? Où peut se trouver $q$, sachant que $\frac{p}{2} < q < p$ ?
4. **Question 3.** Appliquer (R2) avec $N = 3mn$ : la proportion $\frac{a_\ell(3mn)}{3mn}$ finit par
   être plus petite que n'importe quel nombre positif fixé. Lequel choisir ?
5. **Question 4.** Combien y a-t-il au plus de nombres non pointus entre $1$ et $3mn$ ? Découper le
   début des entiers en paquets de $m$ nombres consécutifs, et utiliser le principe des tiroirs.

## Solution

**1.** Prenons $\ell = 24m + 1$, qui est bien supérieur ou égal à $2$. Soit $n \geq 1$. Le nombre
$N = 3mn$ est au moins $3$, donc (R1) s'applique : $D_\ell$ a au plus

$$\frac{8 \times 3mn}{\ell - 1} = \frac{24mn}{24m} = n$$

éléments entre $1$ et $3mn$.

**2.** Comme $a$ n'est pas pointu, il a au moins deux facteurs premiers. Notons $p > q$ ses deux
plus grands facteurs premiers : on a $p < 2q$.

*Premier cas : $p \leq 2^\ell$.* Tous les facteurs premiers de $a$ sont au plus $p$, donc au plus
$2^\ell$ : $a$ appartient à $A_\ell$.

*Second cas : $p > 2^\ell$.* Les intervalles $]2^k ; 2^{k+1}]$, pour $k = 0, 1, 2, \ldots$,
recouvrent tous les nombres plus grands que $1$ sans se chevaucher. Soit $k$ l'entier tel que
$2^k < p \leq 2^{k+1}$. Si on avait $k \leq \ell - 1$, on aurait $p \leq 2^{k+1} \leq 2^\ell$,
ce qui est faux. Donc $k \geq \ell \geq 2$. Comme $p$ est un entier, $2^k + 1 \leq p \leq 2^{k+1}$,
donc $p \in \mathbb{P}_{2^k}$.

Situons maintenant $q$. On a $q < p \leq 2^{k+1}$, et $q > \frac{p}{2} > \frac{2^k}{2} = 2^{k-1}$.

- Si $q > 2^k$, alors $2^k + 1 \leq q \leq 2^{k+1}$, donc $q \in \mathbb{P}_{2^k}$. Le nombre $a$
  a deux facteurs premiers différents $p$ et $q$ dans $\mathbb{P}_{2^k}$ : il est dans $B_{k,2}$,
  donc dans $C_k$.
- Si $q \leq 2^k$, alors $2^{k-1} + 1 \leq q \leq 2^k$, donc $q \in \mathbb{P}_{2^{k-1}}$, et $a$
  est dans $B_{k-1,1}$. Il est aussi dans $B_{k,1}$ grâce à $p$. Il est donc dans
  $B_{k-1,1} \cap B_{k,1}$, donc dans $C_k$.

Dans les deux cas, $a \in C_k$ avec $k \geq \ell$, donc $a \in D_\ell$.

**Conclusion :** tout entier non pointu appartient à $A_\ell$ ou à $D_\ell$.

**3.** Quand $n$ tend vers $+\infty$, $N = 3mn$ tend aussi vers $+\infty$, donc d'après (R2) le
quotient $\frac{a_\ell(3mn)}{3mn}$ tend vers $0$. Il finit donc par être inférieur au nombre fixé
$\frac{1}{3m} > 0$ : il existe un entier $n \geq 1$ tel que

$$\frac{a_\ell(3mn)}{3mn} \leq \frac{1}{3m}, \qquad \text{c'est-à-dire} \qquad a_\ell(3mn) \leq n.$$

Pour cet entier $n$, l'ensemble $A_\ell$ a au plus $n$ éléments entre $1$ et $3mn$.

**4.** Fixons $n$ comme à la question 3. D'après la question 2, tout entier non pointu entre $1$ et
$3mn$ est dans $A_\ell$ ou dans $D_\ell$. D'après les questions 3 et 1, il y a au plus $n + n = 2n$
entiers non pointus entre $1$ et $3mn$.

Considérons les $2n + 1$ paquets de $m$ entiers consécutifs

$$\{1, \ldots, m\}, \quad \{m+1, \ldots, 2m\}, \quad \ldots, \quad \{2nm + 1, \ldots, (2n+1)m\},$$

c'est-à-dire les paquets $\{mk + 1, \ldots, m(k+1)\}$ pour $k = 0, 1, \ldots, 2n$. Ils ne se
chevauchent pas, et ils sont tous contenus dans $\{1, \ldots, 3mn\}$, car $(2n+1)m \leq 3mn$ (puisque
$n \geq 1$). Chaque entier non pointu se trouve dans au plus un paquet, donc au plus $2n$ paquets
contiennent un entier non pointu. Comme il y a $2n + 1$ paquets, l'un au moins ne contient que des
nombres pointus : il existe $k$ entre $0$ et $2n$ tel que $mk + 1, \ldots, m(k+1)$ sont tous
pointus.

**5.** Soit $m \geq 1$. D'après la question 4, il existe un entier $k \geq 0$ tel que
$mk + 1, \ldots, mk + m$ sont tous pointus. L'entier $n = mk \geq 0$ convient : les nombres
$n + 1, \ldots, n + m$ sont tous pointus. C'est la propriété $\mathcal{P}$.

**Bilan.** Un nombre non pointu ou bien n'a que des facteurs premiers au plus égaux à $2^\ell$
(il est dans $A_\ell$), ou bien a ses deux plus grands facteurs premiers dans une même « tranche »
$]2^k ; 2^{k+1}]$ ou dans deux tranches voisines, avec $k \geq \ell$ (il est dans $D_\ell$). Ces
deux sortes de nombres sont rares : pour $\ell$ et $n$ bien choisis, il y en a au plus $2n$ entre
$1$ et $3mn$. Ils ne peuvent donc pas toucher les $2n + 1$ paquets de $m$ entiers consécutifs
de $1$ à $(2n+1)m$ : on trouve, pour tout $m$, $m$ nombres pointus consécutifs.

## Going further

- Le résultat (R1) est démontré dans l'exercice 40724, et le résultat (R2) dans l'exercice 40723,
  sous la forme $a_\ell(N) \leq \frac{2}{(\ln 2)^b} \times \frac{(\ln(2N))^b}{2N} \times N$ avec
  $b = 2^\ell$.
- La preuve montre l'existence de $m$ nombres pointus consécutifs, mais sans les trouver : les
  nombres $\ell$ et $n$ qu'elle fournit sont gigantesques. Avec un programme, on trouve par exemple
  $84$ nombres pointus consécutifs, de $36\,189$ à $36\,272$. Pouvez-vous vérifier que $36\,190$
  est pointu ?
