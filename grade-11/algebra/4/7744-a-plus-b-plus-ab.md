---
id: "7744"
title: "On efface a et b, on écrit a + b + ab"
grade: 11
theme: algebra
difficulty: 4
duration_min: 35
tags: [invariant, produit telescopique, fractions, factorisation]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, cours de Groupe B"
  reference: "stage_ete_2014.pdf, « Groupe B : logique et stratégies de base », mercredi 20 après-midi (Margaret Bilu), exercice 13"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

On écrit au tableau les $n$ nombres

$$1, \quad \frac{1}{2}, \quad \frac{1}{3}, \quad \ldots, \quad \frac{1}{n} .$$

Une opération consiste à effacer deux nombres, disons $a$ et $b$, et à écrire à leur place

$$a + b + ab .$$

Après $n-1$ opérations, il ne reste qu'un seul nombre. Lequel ?

## Hints

1. Essaie avec $n = 2$, puis $n = 3$ en variant l'ordre des opérations. Le résultat dépend-il des choix ?
2. L'expression $a + b + ab$ ressemble à un développement. Ajoute $1$ : que reconnais-tu dans $1 + a + b + ab$ ?
3. Tu obtiens $(1+a)(1+b)$. Quelle quantité, calculée sur tous les nombres écrits au tableau, ne change donc jamais ?
4. Calcule cette quantité au départ. Les fractions se simplifient en cascade.

## Solution

**Le nombre qui reste est toujours $n$, quel que soit l'ordre des opérations.**

**L'invariant.** La clé est la factorisation

$$1 + (a + b + ab) = 1 + a + b + ab = (1+a)(1+b) .$$

Considérons donc, à chaque instant, le produit

$$\Pi = \prod \bigl(1 + \text{nombre écrit}\bigr) ,$$

c'est-à-dire le produit des nombres augmentés de $1$.

Lors d'une opération, on retire du produit les deux facteurs $(1+a)$ et $(1+b)$, et on ajoute le facteur $1 + (a+b+ab)$, qui vaut exactement $(1+a)(1+b)$ d'après la factorisation ci-dessus. Le produit $\Pi$ est donc **inchangé**.

**La valeur de $\Pi$ au départ.** Les nombres écrits sont $\dfrac{1}{k}$ pour $k$ allant de $1$ à $n$, donc

$$\Pi = \prod_{k=1}^{n} \left(1 + \frac{1}{k}\right) = \prod_{k=1}^{n} \frac{k+1}{k} = \frac{2}{1} \times \frac{3}{2} \times \frac{4}{3} \times \cdots \times \frac{n+1}{n} .$$

Tout se simplifie en cascade : le numérateur de chaque fraction annule le dénominateur de la suivante. Il ne reste que le premier numérateur et le dernier dénominateur, d'où

$$\Pi = \frac{n+1}{1} = n+1 .$$

**On conclut.** À la fin, il ne reste qu'un seul nombre, appelons-le $x$. Le produit $\Pi$ ne comporte alors qu'un facteur :

$$\Pi = 1 + x .$$

Comme $\Pi$ n'a pas changé, $1 + x = n + 1$, donc

$$\boxed{\; x = n \;}$$

**Conclusion : quel que soit l'ordre dans lequel on effectue les opérations, le nombre final vaut $n$.**

## Going further

Vérifions pour $n = 3$, avec les nombres $1$, $\tfrac12$, $\tfrac13$.

- En commençant par $1$ et $\tfrac12$ : on écrit $1 + \tfrac12 + \tfrac12 = 2$. Il reste $2$ et $\tfrac13$, qui donnent $2 + \tfrac13 + \tfrac23 = 3$.
- En commençant par $\tfrac12$ et $\tfrac13$ : on écrit $\tfrac12 + \tfrac13 + \tfrac16 = 1$. Il reste $1$ et $1$, qui donnent $1 + 1 + 1 = 3$.

Les deux chemins mènent bien à $3$.

Le mécanisme se résume ainsi : l'opération $a \star b = a + b + ab$ est simplement la multiplication déguisée. En posant $A = 1+a$ et $B = 1+b$, on a $1 + a \star b = AB$. Beaucoup d'exercices d'invariants se ramènent ainsi à une opération familière après un changement de variable.
