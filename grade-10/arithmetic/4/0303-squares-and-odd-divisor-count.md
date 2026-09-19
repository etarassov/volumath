---
id: "0303"
title: "Carrés parfaits et nombre de diviseurs"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [diviseurs, carres-parfaits, equivalence, demonstration]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, Математический кружок (8–9 класс), первое полугодие, сост. Е. А. Асташов, Д. А. Удимов"
  reference: "AU.pdf, листок 8 «Просто о простых», задача 9 (с. 51)"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU.pdf"
---

## Statement

Montrer qu'un entier naturel non nul est un carré parfait si et seulement s'il possède un nombre impair de diviseurs.

(Un carré parfait est un entier de la forme $k^2$ avec $k$ entier naturel : $1$, $4$, $9$, $16$, $25$, etc.)

## Hints

1. Faire la liste des diviseurs de $1, 2, 3, \dots, 16$ et compter. Quels sont les nombres qui ont un nombre impair de diviseurs ? Cela doit donner envie de démontrer l'énoncé.
2. Les diviseurs ne viennent pas tout seuls : si $d$ divise $n$, alors $\dfrac{n}{d}$ divise $n$ aussi. On peut donc ranger les diviseurs par paires $\left\{d \, ; \dfrac{n}{d}\right\}$.
3. Une paire contient deux diviseurs différents... sauf dans un cas. Lequel ? Que vaut alors $n$ ?
4. Le nombre de diviseurs est donc pair, sauf quand il existe un diviseur $d$ avec $d = \dfrac{n}{d}$.

## Solution

**L'idée : ranger les diviseurs par paires.**

Soit $n$ un entier naturel non nul. À chaque diviseur $d$ de $n$ on associe le nombre
$$d' = \frac{n}{d}.$$
C'est encore un diviseur de $n$ (puisque $n = d \times d'$), et si on recommence l'opération sur $d'$ on retombe sur $d$, car $\dfrac{n}{d'} = d$.

Les diviseurs de $n$ se regroupent donc en paires $\{d \, ; d'\}$ : chaque diviseur appartient à exactement une paire, celle formée avec son associé.

**Quand une paire ne contient qu'un seul nombre.**

La paire $\{d \, ; d'\}$ contient deux nombres différents, sauf si $d = d'$, c'est-à-dire
$$d = \frac{n}{d} \iff d^2 = n .$$

Autrement dit : une paire est réduite à un seul élément exactement quand $n$ est le carré de ce diviseur.

**Premier sens : si $n$ n'est pas un carré parfait, il a un nombre pair de diviseurs.**

Si $n$ n'est pas un carré parfait, aucun diviseur ne vérifie $d^2 = n$. Toutes les paires contiennent donc deux diviseurs distincts, et l'ensemble des diviseurs est partagé en paires. Le nombre de diviseurs est donc le double du nombre de paires : il est pair.

**Second sens : si $n$ est un carré parfait, il a un nombre impair de diviseurs.**

Supposons $n = k^2$ avec $k$ entier naturel non nul. Alors $k$ est un diviseur de $n$ et $k^2 = n$ : la paire de $k$ est réduite à $\{k\}$.

Et c'est la seule : si $d$ est un autre diviseur avec $d^2 = n = k^2$, alors $d = k$ puisque $d$ et $k$ sont tous deux positifs.

Tous les autres diviseurs se rangent donc en paires de deux éléments distincts. Le nombre de diviseurs vaut
$$2 \times (\text{nombre de paires complètes}) + 1,$$
c'est un nombre impair.

**Conclusion.** Les deux implications sont démontrées :

$$n \text{ est un carré parfait} \iff n \text{ a un nombre impair de diviseurs.}$$

**Un exemple pour fixer les idées.** Pour $n = 36$ : les paires sont $\{1 ; 36\}$, $\{2 ; 18\}$, $\{3 ; 12\}$, $\{4 ; 9\}$, et enfin $\{6\}$ tout seul, car $6 \times 6 = 36$. Cela fait $4 \times 2 + 1 = 9$ diviseurs, un nombre impair. Pour $n = 12$, qui n'est pas un carré : $\{1 ; 12\}$, $\{2 ; 6\}$, $\{3 ; 4\}$, soit $6$ diviseurs, un nombre pair.

## Going further

1. **Les casiers du collège.** Un couloir compte $100$ casiers, numérotés de $1$ à $100$, tous fermés. Cent élèves passent l'un après l'autre. L'élève numéro $k$ change l'état (ouvert devient fermé, fermé devient ouvert) de tous les casiers dont le numéro est un multiple de $k$. Quels casiers sont ouverts à la fin ? Montrer que la réponse est donnée par l'exercice ci-dessus.
2. Combien y a-t-il d'entiers entre $1$ et $1000$ qui ont un nombre impair de diviseurs ?
