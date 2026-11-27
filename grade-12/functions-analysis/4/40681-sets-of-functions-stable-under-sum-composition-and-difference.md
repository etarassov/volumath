---
id: "40681"
title: "Des ensembles de fonctions qui contiennent tous les polynômes"
grade: 12
theme: functions-analysis
difficulty: 4
duration_min: 50
tags: [fonctions, composition, exponentielle, logarithme, polynome, ensembles, identites-remarquables]
adapted_from: null
see_also: ["40682", "40683"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2019, mathématiques, série S"
  reference: "cg-2019-s-sujet.pdf, problème 1 « Ensembles remarquables de fonctions », questions 1 (a à d) et 2"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2019.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2019-s-sujet.pdf"
---

## Statement

On note $\mathcal{P}$ l'ensemble des fonctions définies sur $[0, +\infty[$ et à valeurs dans
$[0, +\infty[$. Pour $f$ et $g$ dans $\mathcal{P}$, on note $f \circ g$ la fonction
$x \mapsto f(g(x))$. Si $f(x) \geqslant g(x)$ pour tout réel $x \geqslant 0$, on note
$f \geqslant g$.

On note $u$ et $v$ les fonctions de $\mathcal{P}$ définies, pour tout réel $x \geqslant 0$, par
$$u(x) = e^x - 1 \qquad \text{et} \qquad v(x) = \ln(x + 1).$$

Une *fonction polynomiale* est une fonction de la forme
$x \mapsto a_d x^d + \cdots + a_1 x + a_0$, où les *coefficients* $a_0, \ldots, a_d$ sont des
réels.

Si $\mathcal{S}$ est un ensemble de fonctions de $\mathcal{P}$, on considère les propriétés
suivantes :

- **(P1)** $\mathcal{S}$ contient $u$ et $v$.
- **(P2)** $\mathcal{S}$ contient toutes les fonctions constantes positives (ou nulles).
- **(P3)** Si $f$ et $g$ sont dans $\mathcal{S}$, alors $f + g$ est dans $\mathcal{S}$.
- **(P4)** Si $f$ et $g$ sont dans $\mathcal{S}$, alors $f \circ g$ est dans $\mathcal{S}$.
- **(P5)** Si $f$ et $g$ sont dans $\mathcal{S}$ avec $f \geqslant g$, alors $f - g$ est dans
  $\mathcal{S}$.
- **(P6)** Si $f$ et $g$ sont dans $\mathcal{S}$, alors $f \times g$ est dans $\mathcal{S}$.

1. Soit $\mathcal{T}$ un ensemble de fonctions de $\mathcal{P}$ qui vérifie les six propriétés
   (P1) à (P6).

   a) On note $\ell$ la fonction définie par $\ell(x) = x$ pour tout $x \geqslant 0$. Démontrer
   que $\ell$ est dans $\mathcal{T}$.

   b) Déterminer toutes les fonctions affines qui sont dans $\mathcal{T}$.

   c) Démontrer que la fonction $p$ définie par $p(x) = 2x^2 - 3x + 4$ est dans $\mathcal{T}$.

   d) Une fonction polynomiale qui appartient à $\mathcal{P}$ est-elle toujours dans
   $\mathcal{T}$ ?

2. Soit maintenant $\mathcal{U}$ un ensemble de fonctions de $\mathcal{P}$ qui vérifie (P1),
   (P2), (P3), (P4) et (P5), mais dont on ne sait pas s'il vérifie (P6). La réponse à la
   question 1 d) reste-t-elle valable pour $\mathcal{U}$ ?

## Hints

1. **Question 1 a.** Composer $u$ et $v$ dans un ordre ou dans l'autre.
2. **Question 1 b.** Une fonction affine $x \mapsto ax + b$ de $\mathcal{T}$ est à valeurs
   positives sur $[0, +\infty[$ : que peut-on dire de $b$ ? Et de $a$ ?
3. **Question 1 c.** On ne peut pas soustraire $3x$ n'importe comment : écrire $p$ comme une
   différence $f - g$ de deux fonctions de $\mathcal{T}$ avec $f \geqslant g$.
4. **Question 1 d.** Séparer les termes dont le coefficient est positif de ceux dont le
   coefficient est négatif.
5. **Question 2.** Essayer de montrer que $\mathcal{U}$ vérifie quand même (P6).
6. **Question 2.** Il suffit de savoir fabriquer, à partir de $f$, les fonctions $\lambda f$
   (pour $\lambda \geqslant 0$) et $f^2$, car $2fg = (f + g)^2 - f^2 - g^2$.
7. **Question 2.** Pour $\lambda f$ : il suffit d'avoir $\lambda \ell$, puis de composer. Que vaut
   $u(x + c)$ en fonction de $u(x)$ ?
8. **Question 2.** Pour les carrés : comparer $u(2x)$ et $2u(x)$, et calculer leur différence.

## Solution

**1. a)** Pour tout $x \geqslant 0$, $v(u(x)) = \ln\left(e^x - 1 + 1\right) = \ln(e^x) = x$.
Donc $\ell = v \circ u$. Comme $u$ et $v$ sont dans $\mathcal{T}$ (P1), la propriété (P4)
montre que $\ell$ est dans $\mathcal{T}$.

**1. b)** Soit $f : x \mapsto ax + b$ une fonction affine de $\mathcal{T}$. Elle est dans
$\mathcal{P}$, donc à valeurs positives ou nulles. D'abord $b = f(0) \geqslant 0$. Ensuite, si
on avait $a < 0$, on aurait $f(x) < 0$ pour $x > -\frac{b}{a}$, ce qui est impossible. Donc
$a \geqslant 0$ et $b \geqslant 0$.

Réciproquement, soient $a \geqslant 0$ et $b \geqslant 0$. La constante $a$ est dans
$\mathcal{T}$ (P2), $\ell$ aussi (question a), donc $a \times \ell$ aussi (P6). La constante $b$
est dans $\mathcal{T}$ (P2), donc $a\ell + b$ aussi (P3).

**Conclusion :** les fonctions affines de $\mathcal{T}$ sont exactement les fonctions
$x \mapsto ax + b$ avec $a \geqslant 0$ et $b \geqslant 0$.

**1. c)** On écrit $p = f - g$ avec $f(x) = 2x^2 + 4$ et $g(x) = 3x$.

- $f$ est dans $\mathcal{T}$ : $\ell \times \ell$ est dans $\mathcal{T}$ (P6), puis
  $2 \times \ell^2$ (P2 et P6), puis $2\ell^2 + 4$ (P2 et P3).
- $g$ est dans $\mathcal{T}$ d'après la question b.
- $f \geqslant g$ : en effet $f(x) - g(x) = 2x^2 - 3x + 4$ a pour discriminant
  $9 - 32 = -23 < 0$ et un coefficient dominant positif, donc ce trinôme est strictement
  positif pour tout $x$.

Par (P5), $p = f - g$ est dans $\mathcal{T}$.

**1. d)** Oui. Soit $f$ une fonction polynomiale de $\mathcal{P}$. D'abord, chaque fonction
$x \mapsto c\,x^k$ avec $c \geqslant 0$ est dans $\mathcal{T}$ : $\ell^k = \ell \times \cdots
\times \ell$ s'obtient en appliquant (P6) plusieurs fois (et $\ell^0$ est la constante $1$),
puis on multiplie par la constante $c$ (P2 et P6). Par (P3), toute fonction polynomiale **à
coefficients positifs ou nuls** est donc dans $\mathcal{T}$.

Écrivons maintenant $f = f_+ - f_-$, où $f_+$ regroupe les termes de $f$ à coefficient positif,
et $f_-$ les termes à coefficient négatif, changés de signe. Par exemple, pour $p$ de la
question c, $f_+(x) = 2x^2 + 4$ et $f_-(x) = 3x$. Les fonctions $f_+$ et $f_-$ sont à
coefficients positifs ou nuls, donc elles sont dans $\mathcal{T}$ (si $f_-$ n'a aucun terme,
$f = f_+$ et c'est fini). Et $f_+ - f_- = f \geqslant 0$ puisque $f$ est dans $\mathcal{P}$,
donc $f_+ \geqslant f_-$. Par (P5), $f$ est dans $\mathcal{T}$.

**Conclusion :** toute fonction polynomiale de $\mathcal{P}$ est dans $\mathcal{T}$.

**2.** Oui, la réponse reste valable. Il suffit de montrer que $\mathcal{U}$ vérifie aussi
(P6) : alors $\mathcal{U}$ vérifie les six propriétés et la question 1 d s'applique. La question
1 a n'utilisait que (P1) et (P4), donc $\ell$ est dans $\mathcal{U}$.

*Étape 1 : multiplier par une constante.* Soit $c \geqslant 0$. Pour tout $x \geqslant 0$,
$$u(x + c) = e^c e^x - 1 = e^c\,(e^x - 1) + (e^c - 1) = e^c\,u(x) + (e^c - 1).$$
La fonction $\ell + c$ est dans $\mathcal{U}$ (P2, P3), donc $x \mapsto u(x + c)$ aussi (P4), et
la constante $e^c - 1 \geqslant 0$ aussi (P2). Comme $u(x + c) \geqslant e^c - 1$, la propriété
(P5) montre que $e^c\,u$ est dans $\mathcal{U}$. En composant avec $v$, puisque $u(v(x)) = x$,
on obtient que $e^c\,\ell = (e^c u) \circ v$ est dans $\mathcal{U}$.

Quand $c$ parcourt $[0, +\infty[$, $e^c$ parcourt $[1, +\infty[$ : donc $\lambda\ell$ est dans
$\mathcal{U}$ pour tout $\lambda \geqslant 1$. Si $0 \leqslant \lambda < 1$, on écrit
$\lambda \ell = (\lambda + 1)\ell - \ell$, avec $(\lambda + 1)\ell \geqslant \ell$, et (P5)
conclut. Ainsi $\lambda\ell$ est dans $\mathcal{U}$ pour tout $\lambda \geqslant 0$, et pour
toute $f$ de $\mathcal{U}$, $\lambda f = (\lambda \ell) \circ f$ est dans $\mathcal{U}$ (P4).

*Étape 2 : les carrés.* Pour tout $x \geqslant 0$,
$$u(2x) - 2u(x) = e^{2x} - 1 - 2e^x + 2 = \left(e^x - 1\right)^2 = u(x)^2 \geqslant 0.$$
Or $x \mapsto u(2x)$ est dans $\mathcal{U}$ (c'est $u \circ (\ell + \ell)$, par P3 et P4) et
$2u = u + u$ aussi (P3). Par (P5), $u^2$ est dans $\mathcal{U}$. En composant avec $v$, la
fonction $x \mapsto u(v(x))^2 = x^2$ est dans $\mathcal{U}$ ; notons-la $s$. Pour toute $f$ de
$\mathcal{U}$, $f^2 = s \circ f$ est alors dans $\mathcal{U}$ (P4).

*Étape 3 : les produits.* Soient $f$ et $g$ dans $\mathcal{U}$. Les fonctions $(f + g)^2$, $f^2$
et $g^2$ sont dans $\mathcal{U}$ (P3 et étape 2). Comme $f$ et $g$ sont positives,
$$(f + g)^2 - f^2 = 2fg + g^2 \geqslant g^2 \geqslant 0,$$
donc $(f + g)^2 - f^2$ est dans $\mathcal{U}$ (P5), puis $2fg = \left((f + g)^2 - f^2\right) - g^2$
aussi (P5). Enfin $fg = \frac{1}{2}\,(2fg)$ est dans $\mathcal{U}$ par l'étape 1.

**Conclusion :** $\mathcal{U}$ vérifie (P6), donc toute fonction polynomiale de $\mathcal{P}$ est
encore dans $\mathcal{U}$.

**Bilan.** Un ensemble de fonctions de $\mathcal{P}$ qui contient $u$, $v$ et les constantes,
et qui est stable par somme, composition, différence (quand elle reste positive) et produit,
contient toutes les fonctions polynomiales positives sur $[0, +\infty[$. La stabilité par
produit n'est même pas nécessaire : elle découle des cinq autres propriétés (P1) à (P5), grâce à
l'identité $u(2x) - 2u(x) = u(x)^2$.

## Going further

- Dans la suite du sujet, on retirait cette fois la stabilité par somme (P3) en gardant (P6).
  Les fonctions polynomiales de $\mathcal{P}$ nulles en $0$ sont encore toutes dans l'ensemble
  (exercice 40682), mais pas forcément les autres (exercice 40683). Sauriez-vous trouver
  pourquoi $x \mapsto x + 1$ pose problème ?
- Avec les mêmes propriétés (P1) à (P5), montrer que la fonction $x \mapsto e^{x^2} - 1$ est
  dans $\mathcal{U}$.
