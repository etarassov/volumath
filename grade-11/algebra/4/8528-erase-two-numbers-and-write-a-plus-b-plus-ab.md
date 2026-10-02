---
id: "8528"
title: "Effacer deux nombres et écrire a + b + ab"
grade: 11
theme: algebra
difficulty: 4
duration_min: 35
tags: [invariant, factorisation, telescopage, suite-doperations]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Invariants » (Xavier) du Groupe A, exercice 8"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Soit $n$ un entier supérieur ou égal à $2$. On écrit au tableau les $n$ nombres

$$1, \quad \frac{1}{2}, \quad \frac{1}{3}, \quad \ldots, \quad \frac{1}{n} .$$

À chaque étape, on choisit deux nombres $a$ et $b$ écrits au tableau, on les efface, et on
écrit à leur place le nombre $a + b + ab$.

Au bout de $n-1$ étapes, il ne reste qu'un seul nombre. Quelle est sa valeur ?

## Hints

1. Fais l'expérience avec $n = 2$, puis $n = 3$, en essayant plusieurs ordres. Le résultat semble-t-il dépendre des choix faits ?
2. L'expression $a + b + ab$ ressemble à un développement raté. Que vaut $(1+a)(1+b)$ ?
3. Regarde donc le produit de tous les $(1 + x)$, où $x$ parcourt les nombres écrits au tableau. Que devient-il à chaque étape ?
4. Calcule ce produit au départ. Les fractions se simplifient en cascade.

## Solution

**La bonne quantité à suivre.** Remarquons que

$$(1+a)(1+b) = 1 + a + b + ab = 1 + (a + b + ab) .$$

Autrement dit, si l'on remplace $a$ et $b$ par $c = a + b + ab$, alors

$$1 + c = (1+a)(1+b) .$$

Considérons donc le produit

$$P = \prod_{x \text{ au tableau}} (1 + x) ,$$

c'est-à-dire le produit des $1 + x$ pour tous les nombres $x$ actuellement écrits.

**C'est un invariant.** À chaque étape, deux facteurs $(1+a)$ et $(1+b)$ disparaissent du
produit et sont remplacés par le seul facteur $(1+c) = (1+a)(1+b)$. Le produit $P$ ne change
donc pas.

**Sa valeur de départ.** Au départ, les nombres écrits sont $\frac{1}{k}$ pour $k$ allant de
$1$ à $n$, donc

$$P = \prod_{k=1}^{n} \left(1 + \frac{1}{k}\right) = \prod_{k=1}^{n} \frac{k+1}{k}
= \frac{2}{1} \times \frac{3}{2} \times \frac{4}{3} \times \cdots \times \frac{n+1}{n} .$$

Tout se simplifie de proche en proche : le numérateur d'un facteur annule le dénominateur du
suivant. Il ne reste que

$$P = n + 1 .$$

**Le dernier nombre.** À la fin, il ne reste qu'un seul nombre, appelons-le $C$. Le produit
$P$ ne contient alors qu'un facteur :

$$P = 1 + C .$$

Comme $P$ vaut toujours $n+1$, on obtient $1 + C = n + 1$, donc

$$C = n .$$

**Conclusion.** Quel que soit l'ordre dans lequel on effectue les opérations, le dernier
nombre écrit au tableau vaut $n$.

**Vérification pour $n = 2$.** On efface $1$ et $\frac{1}{2}$, on écrit
$1 + \frac{1}{2} + 1 \times \frac{1}{2} = 2$. C'est bien $n = 2$.
