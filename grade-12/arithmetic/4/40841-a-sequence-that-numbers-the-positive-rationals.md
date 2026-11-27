---
id: "40841"
title: "Une suite qui numérote tous les rationnels positifs"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 60
tags: [suite-recurrente, recurrence-forte, rationnels, valuation, bijection, arbre]
adapted_from: null
see_also: ["6018", "12235", "6013"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2023, mathématiques"
  reference: "cg-2023-s-sujet.pdf, exercice 1 « Soyons rationnels ! », questions 1 à 6 (exercice entier)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2023-s-sujet.pdf"
---

## Statement

Pour tout entier $n \geqslant 1$, on note $v(n)$ le plus grand entier $k$ tel que $\frac{n}{2^k}$ soit un entier. Par exemple $v(12) = 2$, car $\frac{12}{4} = 3$ est entier mais $\frac{12}{8}$ ne l'est pas.

On définit la suite $(u_n)_{n \geqslant 1}$ par $u_1 = 1$ puis, pour tout entier $n \geqslant 2$ :

- $u_n = 0$ si $u_{n-1} = 0$ ;
- $u_n = 1 + 2v(n) - \frac{1}{u_{n-1}}$ si $u_{n-1} \neq 0$.

1. Donner les valeurs de $v(1)$, $v(2)$, $v(3)$ et $v(4)$.
2. Démontrer, pour tout entier $n \geqslant 1$, que $v(n) = 0$ si $n$ est impair, et que $v(n) = v\left(\frac{n}{2}\right) + 1$ si $n$ est pair.
3. Calculer les huit premiers termes de la suite et vérifier que $u_8 = 4$.
4. Démontrer, pour tout entier $n \geqslant 1$, que $u_n$ est un nombre rationnel strictement positif, et que
$$u_{2n} = u_n + 1 \qquad \text{et} \qquad u_{2n+1} = \frac{u_n}{u_n + 1}.$$
5. Démontrer que tout nombre rationnel strictement positif est égal à l'un des termes $u_n$.
6. Démontrer que tout nombre rationnel strictement positif est égal à un **unique** terme $u_n$.

## Hints

1. **Question 2.** Si $n = 2m$, écrire $\frac{n}{2^k} = \frac{m}{2^{k-1}}$.
2. **Question 4.** Raisonner par récurrence forte : supposer les deux formules vraies pour tous les entiers plus petits que $n$, et calculer $u_{2n}$ à partir de $u_{2n-1}$.
3. **Question 4.** On a $2n - 1 = 2(n-1) + 1$, donc l'hypothèse de récurrence donne $u_{2n-1}$ en fonction de $u_{n-1}$. Que vaut alors $\frac{1}{u_{2n-1}}$ ?
4. **Question 5.** Un rationnel $r > 1$ vaut $u_{2m}$ dès que $r - 1$ vaut $u_m$. Et un rationnel $r < 1$, de quel terme peut-il être le « successeur » par la formule de $u_{2n+1}$ ?
5. **Question 5.** Écrire $r = \frac{p}{q}$ et raisonner par récurrence sur la somme $p + q$.
6. **Question 6.** Lesquels des termes sont plus grands que $1$, lesquels plus petits ? Considérer ensuite le plus petit indice $n$ pour lequel $u_n$ est aussi égal à un autre terme.

## Solution

**1.** $v(1) = 0$, $v(2) = 1$, $v(3) = 0$ et $v(4) = 2$.

**2.** Le nombre $k = 0$ convient toujours, puisque $\frac{n}{1} = n$ est entier.

*Si $n$ est impair*, alors pour $k \geqslant 1$, le quotient $\frac{n}{2^k}$ n'est pas entier (sinon $n = 2^k \times \text{entier}$ serait pair). Donc $v(n) = 0$.

*Si $n$ est pair*, écrivons $n = 2m$. Pour $k \geqslant 1$, on a $\frac{n}{2^k} = \frac{m}{2^{k-1}}$, qui est entier exactement quand $k - 1 \leqslant v(m)$ (car $\frac{m}{2^j}$ entier entraîne $\frac{m}{2^{j'}}$ entier pour $j' \leqslant j$). Le plus grand $k$ possible est donc $k = v(m) + 1$, qui est bien plus grand que $0$. Ainsi $v(n) = v\left(\frac{n}{2}\right) + 1$.

**3.** On applique la définition pas à pas :

- $u_2 = 1 + 2 \times 1 - \frac{1}{1} = 2$ ;
- $u_3 = 1 + 0 - \frac{1}{2} = \frac{1}{2}$ ;
- $u_4 = 1 + 2 \times 2 - 2 = 3$ ;
- $u_5 = 1 + 0 - \frac{1}{3} = \frac{2}{3}$ ;
- $u_6 = 1 + 2 \times 1 - \frac{3}{2} = \frac{3}{2}$ ;
- $u_7 = 1 + 0 - \frac{2}{3} = \frac{1}{3}$ ;
- $u_8 = 1 + 2 \times 3 - 3 = 4$.

Les huit premiers termes sont $1, 2, \frac{1}{2}, 3, \frac{2}{3}, \frac{3}{2}, \frac{1}{3}, 4$, et $u_8 = 4$.

**4.** Pour $n \geqslant 1$, notons $\mathcal{H}(n)$ la propriété : « $u_{2n} = u_n + 1$ et $u_{2n+1} = \frac{u_n}{u_n + 1}$, et les termes $u_1, u_2, \ldots, u_{2n+1}$ sont des rationnels strictement positifs ». On la démontre par récurrence forte.

*Initialisation.* D'après la question 3, $u_1 = 1$, $u_2 = 2 = u_1 + 1$ et $u_3 = \frac{1}{2} = \frac{u_1}{u_1 + 1}$. Ces trois termes sont des rationnels strictement positifs. Donc $\mathcal{H}(1)$ est vraie.

*Hérédité.* Soit $n \geqslant 2$ tel que $\mathcal{H}(1), \ldots, \mathcal{H}(n-1)$ soient vraies. En particulier $u_1, \ldots, u_{2n-1}$ sont des rationnels strictement positifs.

- Calcul de $u_{2n}$. Comme $u_{2n-1} \neq 0$ et $v(2n) = v(n) + 1$ (question 2),
$$u_{2n} = 1 + 2v(n) + 2 - \frac{1}{u_{2n-1}}.$$
Or $2n - 1 = 2(n-1) + 1$, donc par $\mathcal{H}(n-1)$, on a $u_{2n-1} = \frac{u_{n-1}}{u_{n-1} + 1}$, d'où $\frac{1}{u_{2n-1}} = 1 + \frac{1}{u_{n-1}}$. Ainsi
$$u_{2n} = 1 + 2v(n) - \frac{1}{u_{n-1}} + 1 = u_n + 1,$$
car $1 + 2v(n) - \frac{1}{u_{n-1}}$ est exactement la définition de $u_n$ (on a $n \geqslant 2$ et $u_{n-1} \neq 0$).
- Calcul de $u_{2n+1}$. Le nombre $u_{2n} = u_n + 1$ est un rationnel supérieur à $1$, donc non nul, et $v(2n+1) = 0$. Donc
$$u_{2n+1} = 1 - \frac{1}{u_n + 1} = \frac{u_n}{u_n + 1}.$$

Comme $u_n$ est un rationnel strictement positif, $u_{2n} = u_n + 1$ et $u_{2n+1} = \frac{u_n}{u_n + 1}$ le sont aussi. Donc $\mathcal{H}(n)$ est vraie.

*Conclusion.* Pour tout $n \geqslant 1$, $u_n$ est un rationnel strictement positif (il fait partie des termes couverts par $\mathcal{H}(n)$), et $u_{2n} = u_n + 1$, $u_{2n+1} = \frac{u_n}{u_n + 1}$.

**5.** Pour tout entier $s \geqslant 2$, notons $\mathcal{P}(s)$ : « tout rationnel qui s'écrit $\frac{p}{q}$ avec $p$, $q$ entiers strictement positifs et $p + q \leqslant s$ est un terme de la suite ». On démontre $\mathcal{P}(s)$ par récurrence sur $s$.

*Initialisation.* Si $p + q \leqslant 2$, alors $p = q = 1$ et $\frac{p}{q} = 1 = u_1$.

*Hérédité.* Supposons $\mathcal{P}(s)$ vraie, et soit $r = \frac{p}{q}$ avec $p + q \leqslant s + 1$. Trois cas.

- Si $r = 1$, alors $r = u_1$.
- Si $r > 1$, alors $p > q$ et $r - 1 = \frac{p - q}{q}$ avec $p - q \geqslant 1$ et $(p - q) + q = p < p + q \leqslant s + 1$, donc $p \leqslant s$. Par $\mathcal{P}(s)$, il existe $m$ tel que $u_m = r - 1$, et alors $u_{2m} = u_m + 1 = r$.
- Si $r < 1$, alors $p < q$. Posons $t = \frac{p}{q - p}$ : c'est un rationnel strictement positif, avec $p + (q - p) = q \leqslant s$. Par $\mathcal{P}(s)$, il existe $m$ tel que $u_m = t$, et alors
$$u_{2m+1} = \frac{t}{t + 1} = \frac{p}{(q - p) + p} = \frac{p}{q} = r.$$

Donc $\mathcal{P}(s+1)$ est vraie. Tout rationnel strictement positif s'écrit $\frac{p}{q}$ avec $p, q \geqslant 1$, donc il est un terme de la suite.

**6.** D'abord, on sépare les termes en trois groupes, grâce à la question 4. Pour $m \geqslant 1$ :

- $u_{2m} = u_m + 1 > 1$ ;
- $u_{2m+1} = \frac{u_m}{u_m + 1} < 1$ ;
- et $u_1 = 1$.

Donc $u_n > 1$ si $n$ est pair, $u_n < 1$ si $n \geqslant 3$ est impair, et $u_n = 1$ seulement pour $n = 1$.

Supposons maintenant qu'un rationnel soit égal à deux termes $u_n = u_m$ avec $n \neq m$. Parmi toutes ces paires, choisissons-en une où le plus petit des deux indices, disons $n < m$, est le plus petit possible.

- On ne peut pas avoir $n = 1$, car $u_m = 1$ forcerait $m = 1$.
- Donc $n \geqslant 2$, et $u_n$, $u_m$ sont tous deux plus grands que $1$ ou tous deux plus petits que $1$ : $n$ et $m$ ont la même parité.
- S'ils sont pairs, $n = 2a$ et $m = 2b$ avec $a \neq b$, et $u_a + 1 = u_b + 1$, donc $u_a = u_b$.
- S'ils sont impairs, $n = 2a + 1$ et $m = 2b + 1$ avec $a \neq b$, et $1 - \frac{1}{u_a + 1} = 1 - \frac{1}{u_b + 1}$, donc $u_a = u_b$.

Dans les deux cas, on obtient une paire $u_a = u_b$ avec $a \neq b$ et $\min(a, b) < n$, ce qui contredit le choix de $n$. Donc deux termes d'indices différents sont toujours différents. Avec la question 5, tout rationnel strictement positif est égal à un terme $u_n$ et un seul.

**Bilan.** La suite $(u_n)$, définie par une récurrence qui fait intervenir la plus grande puissance de $2$ qui divise $n$, vérifie $u_{2n} = u_n + 1$ et $u_{2n+1} = \frac{u_n}{u_n + 1}$. On en a déduit qu'elle prend chaque valeur rationnelle strictement positive exactement une fois : elle numérote les rationnels strictement positifs.

## Going further

- Placer les termes dans un arbre : $u_n$ a pour « enfants » $u_{2n} = u_n + 1$ et $u_{2n+1} = \frac{u_n}{u_n + 1}$. Quelle fraction se trouve à la ligne $k$, et combien y en a-t-il ? C'est, à une symétrie près, l'arbre de Calkin et Wilf de l'exercice 6018.
- On note $b(n)$ le nombre d'écritures de $n$ comme somme de puissances de $2$, chacune utilisée au plus deux fois (exercice 6013), avec $b(0) = 1$. Vérifier sur les premiers termes, puis démontrer, que $u_n = \frac{b(n)}{b(n-1)}$.
- L'exercice 12235 construit de la même façon une suite qui numérote les rationnels, avec les puissances de $3$ au lieu des puissances de $2$.
