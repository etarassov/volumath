---
id: "8331"
title: "n + 1 divise 2n² + 5n"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [divisibilite, factorisation, diviseurs, congruences]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, entraînement du Groupe A"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Groupe A, entraînement de fin de parcours, exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

Trouver tous les entiers naturels $n$ tels que

$$n + 1 \; \text{divise} \; 2n^2 + 5n .$$

On pensera à vérifier que les valeurs trouvées conviennent effectivement.

## Hints

1. Comme toujours, le but est de faire disparaître $n$ pour arriver à « $n+1$ divise un nombre fixe ».
2. Un moyen commode : remarquer que $n \equiv -1 \pmod{n+1}$, et remplacer $n$ par $-1$ dans l'expression.
3. Sinon, procède par étapes. $n+1$ divise $(n+1)(n-1) = n^2 - 1$, donc il divise $2n^2 - 2$. Compare avec $2n^2 + 5n$.
4. Tu obtiens que $n+1$ divise $5n + 2$. Recommence : $n+1$ divise $5(n+1) = 5n+5$.
5. Il ne reste qu'à énumérer les diviseurs du nombre fixe obtenu, et à vérifier.

## Solution

**Méthode courte : on travaille modulo $n+1$.**

Dans les congruences modulo $n+1$, on a $n \equiv -1$. Donc

$$2n^2 + 5n \equiv 2 \times (-1)^2 + 5 \times (-1) \equiv 2 - 5 \equiv -3 \pmod{n+1} .$$

Dire que $n+1$ divise $2n^2 + 5n$ revient donc à dire que $n+1$ divise $-3$, c'est-à-dire que

$$n+1 \; \text{divise} \; 3 .$$

**Méthode détaillée, sans congruences.**

Le nombre $n+1$ divise $(n+1)(n-1) = n^2 - 1$, donc il divise $2(n^2-1) = 2n^2 - 2$.

Si de plus $n+1$ divise $2n^2 + 5n$, alors il divise la différence :

$$(2n^2 + 5n) - (2n^2 - 2) = 5n + 2 .$$

Or $n+1$ divise aussi $5(n+1) = 5n+5$. Donc il divise

$$(5n + 5) - (5n + 2) = 3 .$$

On retrouve la même conclusion.

**On énumère.**

Comme $n$ est un entier naturel, $n + 1 \geqslant 1$. Les diviseurs positifs de $3$ sont $1$ et
$3$, d'où

$$n + 1 = 1 \quad \text{ou} \quad n+1 = 3 , \qquad \text{c'est-à-dire} \qquad n = 0 \quad \text{ou} \quad n = 2 .$$

**Vérification.**

- $n = 0$ : $n+1 = 1$ et $2n^2 + 5n = 0$. Or $1$ divise $0$. C'est bon.
- $n = 2$ : $n+1 = 3$ et $2 \times 4 + 5 \times 2 = 8 + 10 = 18 = 3 \times 6$. C'est bon.

**Conclusion.** Les entiers naturels solutions sont

$$\boxed{n = 0 \quad \text{et} \quad n = 2} .$$

## Going further

Une troisième route passe par le lemme de Gauss. On factorise $2n^2 + 5n = n(2n+5)$. Comme

$$\mathrm{PGCD}(n+1, n) = \mathrm{PGCD}(1, n) = 1 ,$$

les entiers $n+1$ et $n$ sont premiers entre eux, donc $n+1$ divise $2n+5$. Et
$2n + 5 = 2(n+1) + 3$, donc $n+1$ divise $3$ : même conclusion.

Ces trois chemins mènent au même endroit, mais le premier est de loin le plus rapide dès que
l'expression est un peu compliquée : il suffit de remplacer $n$ par $-1$.
