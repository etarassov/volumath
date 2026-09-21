---
id: "8726"
title: "Trois cents chiffres 1 et des zéros"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [carre-parfait, criteres-de-divisibilite, facteurs-premiers, somme-des-chiffres]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024, cours de Groupe A"
  reference: "poly_valbonne_2024.pdf, Groupe A, « TD de modulos » (Théo et Thomas), exercice 6, d'après la Coupe Animath d'automne 2019, exercice 8"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

Existe-t-il un entier dont l'écriture décimale contient exactement **trois cents** chiffres $1$, aucun autre chiffre que des $0$, et qui soit un **carré parfait** ?

Par exemple $1\,001\,010$ est un nombre de ce type (avec trois chiffres $1$), mais ce n'est pas un carré parfait.

## Hints

1. La seule chose que l'on connaisse d'un tel nombre, c'est la somme de ses chiffres. Combien vaut-elle ?
2. La somme des chiffres renseigne sur la divisibilité par $3$ et par $9$. Que donne-t-elle ici ?
3. Dans la décomposition en facteurs premiers d'un carré parfait, chaque exposant est **pair**. Que cela impose-t-il à un carré parfait divisible par $3$ ?

## Solution

**Réponse : non, un tel nombre n'existe pas.**

### Ce que l'on sait du nombre

Soit $N$ un tel entier : son écriture décimale ne contient que des $0$ et des $1$, avec exactement trois cents chiffres $1$.

On ne sait rien de sa taille ni de la position des $1$. Mais on connaît la **somme de ses chiffres** :

$$1 + 1 + \cdots + 1 = 300 ,$$

puisque les $0$ n'apportent rien.

### Divisible par 3, mais pas par 9

Le reste d'un entier dans la division par $9$ est le même que celui de la somme de ses chiffres. Ici :

$$300 = 9 \times 33 + 3 ,$$

donc $N$ laisse le reste $3$ dans la division par $9$.

En particulier :

- $N$ est divisible par $3$, car $300$ l'est ($300 = 3 \times 100$) ;
- $N$ n'est **pas** divisible par $9$, car son reste modulo $9$ vaut $3$.

### Pourquoi c'est impossible pour un carré

Supposons que $N$ soit un carré parfait, disons $N = m^2$.

Le nombre $3$ est premier et divise $N = m \times m$. Comme $3$ est premier, il divise l'un des deux facteurs, donc $3$ divise $m$.

Écrivons $m = 3k$. Alors

$$N = m^2 = 9k^2 ,$$

donc $N$ est divisible par $9$.

Or on a vu que $N$ n'est pas divisible par $9$. Contradiction.

### Conclusion

$$\boxed{\text{Aucun carré parfait ne s'écrit avec exactement trois cents chiffres } 1 \text{ et des } 0 .}$$

*Le principe général.* Dans la décomposition en facteurs premiers d'un carré, chaque nombre premier apparaît un nombre **pair** de fois. Donc si un nombre premier $p$ divise un carré, alors $p^2$ le divise aussi. Ici on a exhibé un nombre premier, $3$, qui divise $N$ mais dont le carré ne le divise pas : c'est la façon la plus économique de prouver qu'un nombre n'est pas un carré.

## Going further

1. **Les carrés modulo 9.** Calcule les restes de $0^2, 1^2, 2^2, \ldots, 8^2$ dans la division par $9$. Tu ne trouveras que quatre restes possibles : $0$, $1$, $4$ et $7$. Déduis-en qu'un entier dont la somme des chiffres vaut $2022$ n'est jamais un carré parfait.

2. Le nombre $\underbrace{11\ldots1}_{n}$, formé de $n$ chiffres $1$ à la suite, est-il un carré parfait pour un certain $n \geqslant 2$ ? *Indication : il se termine par $11$, donc il laisse le reste $3$ dans la division par $4$. Quels sont les restes possibles d'un carré modulo $4$ ?*

3. Montre plus généralement ceci : si un entier est divisible par un nombre premier $p$ mais pas par $p^2$, alors ce n'est ni un carré, ni une puissance quatrième, ni aucune puissance paire. En revanche, peut-il être un cube ?
