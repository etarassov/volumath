---
id: "11016"
title: "(m³ + n)(n³ + m) est le cube d'un nombre premier"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [nombres-premiers, equation-diophantienne, factorisation, divisibilite, disjonction-de-cas]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 3 (arithmétique)"
  reference: "2020-12_Sujet-envoi-3.pdf, Exercices Juniors, exercice 9 (repris en Seniors, exercice 14) ; corrigé 2021-02_Corrige-envoi-3.pdf. Le corrigé suppose m > n « sans perte de généralité » puis conclut que la seule solution est (2, 1, 3) : il oublie le triplet symétrique (1, 2, 3), qui convient aussi."
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/12/Sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-12_Sujet-envoi-3.pdf"
---

## Statement

Trouver tous les triplets $(m, n, p)$ d'entiers strictement positifs, avec $p$ premier, tels que

$$(m^3 + n)(n^3 + m) = p^3 .$$

## Hints

1. Montre d'abord que $m \neq n$, puis suppose $m > n$. Quels sont les diviseurs de $p^3$ ? Déduis-en les
   valeurs de $m^3 + n$ et de $n^3 + m$.
2. Tu obtiens $n^3 + m = p$ et $m^3 + n = p^2$. Remplace $m$ par $p - n^3$ dans la seconde égalité et
   développe : $p$ divise un nombre qui ne dépend que de $n$.
3. Ce nombre est $n^9 - n$. Factorise-le complètement et compare chaque facteur à $p$, qui est plus grand
   que $n^3$.
4. Le facteur $n^4 + 1$ est le plus coriace. Si $p$ le divise, montre que $p$ divise aussi $mn - 1$, puis
   compare $mn$ et $p$.

## Solution

On utilisera la propriété suivante, qui découle de la décomposition en facteurs premiers : *si un nombre
premier divise un produit, il divise l'un des facteurs.*

**$m$ et $n$ sont différents.** Si $m = n$, l'équation devient $(m^3 + m)^2 = p^3$. Mais dans un carré,
chaque nombre premier apparaît avec un exposant pair, alors que $p$ apparaît dans $p^3$ avec l'exposant
$3$. C'est impossible.

Les rôles de $m$ et $n$ sont symétriques. On cherche donc d'abord les solutions avec $m > n$ ; les autres
s'obtiendront en échangeant $m$ et $n$.

**On identifie les deux facteurs.** Supposons $m > n \geqslant 1$, donc $m \geqslant 2$. Alors
$$(m^3 + n) - (n^3 + m) = (m^3 - n^3) - (m - n) = (m - n)(m^2 + mn + n^2 - 1) > 0 ,$$
car $m - n > 0$ et $m^2 + mn + n^2 \geqslant 4 + 2 + 1 > 1$. De plus $n^3 + m \geqslant 1 + 2 > 1$.

Les diviseurs positifs de $p^3$ sont $1, p, p^2, p^3$. Pour écrire $p^3$ comme produit de deux facteurs
$A > B > 1$, la seule possibilité est $B = p$ et $A = p^2$. Donc
$$n^3 + m = p \qquad \text{et} \qquad m^3 + n = p^2 .$$

**$p$ divise $n^9 - n$.** On remplace $m = p - n^3$ dans la seconde égalité :
$$(p - n^3)^3 + n = p^2 .$$
En développant, $(p - n^3)^3 = p^3 - 3p^2 n^3 + 3p n^6 - n^9$, donc
$$n - n^9 = p^2 - p^3 + 3p^2 n^3 - 3p n^6 ,$$
et le membre de droite est un multiple de $p$. Ainsi $p$ divise
$$n^9 - n = n(n^8 - 1) = n(n^4 - 1)(n^4 + 1) = n(n - 1)(n + 1)(n^2 + 1)(n^4 + 1) .$$
Le nombre premier $p$ divise donc l'un de ces cinq facteurs.

**On compare chaque facteur à $p$.** Rappelons que $p = n^3 + m \geqslant n^3 + 2$.

- $p$ ne divise pas $n$, ni $n + 1$, ni $n^2 + 1$ : ces trois nombres sont strictement positifs et
  inférieurs ou égaux à $n^3 + 1$, donc strictement plus petits que $p$.
- Si $p$ divise $n - 1$ : comme $0 \leqslant n - 1 < p$, on a forcément $n - 1 = 0$, soit $n = 1$. Alors
  $p = m + 1$ et $m^3 + 1 = (m + 1)^2$. Or $m^3 + 1 = (m + 1)(m^2 - m + 1)$ ; en simplifiant par $m + 1$,
  on obtient $m^2 - m + 1 = m + 1$, soit $m(m - 2) = 0$, donc $m = 2$ et $p = 3$, qui est bien premier.
- Si $p$ divise $n^4 + 1$ : comme $p$ divise aussi $n \cdot p = n^4 + nm$, il divise la différence
  $$(n^4 + nm) - (n^4 + 1) = mn - 1 .$$
  Or $p^3 = (m^3 + n)(n^3 + m) > m^3 \times n^3$, donc $p > mn$, et $0 < mn - 1 < p$. Un multiple de $p$
  strictement compris entre $0$ et $p$, c'est impossible.

Avec $m > n$, la seule solution est donc $(m, n, p) = (2, 1, 3)$.

**Vérification.** $(2^3 + 1)(1^3 + 2) = 9 \times 3 = 27 = 3^3$.

**Conclusion.** En échangeant $m$ et $n$, on obtient la seconde solution. Les solutions sont
$$(m, n, p) = (2, 1, 3) \qquad \text{et} \qquad (m, n, p) = (1, 2, 3) .$$
