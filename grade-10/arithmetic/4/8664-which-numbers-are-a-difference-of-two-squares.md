---
id: "8664"
title: "Quels nombres sont une différence de deux carrés ?"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [difference de carres, congruences, parite, construction]
adapted_from: null
see_also: ["8329"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, cours « Équations diophantiennes et factorisations » (Théo & Gaspard D.), exercice 10"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Pour quels entiers naturels $n$ existe-t-il des entiers naturels $a$ et $b$ tels que

$$n + a^2 = b^2 \ ?$$

## Hints

1. Commence par tester à la main $n = 1, 2, 3, 4, 5, 6, 7, 8, 9, 10$. Note ceux qui marchent et ceux qui résistent.
2. Une régularité devrait apparaître : les nombres qui résistent sont $2$, $6$, $10$, $14$\ldots Comment les décrire ?
3. Pour la démonstration, réécris l'équation en $n = b^2 - a^2$ et factorise.
4. Tu obtiens $n = (b-a)(b+a)$. Que peux-tu dire de la **parité** des deux facteurs $b-a$ et $b+a$ ? Leur somme vaut $2b$.
5. Deux nombres de même parité : leur produit est impair, ou bien multiple de $4$. Jamais simplement pair.
6. Pour la réciproque, il faut **construire** $a$ et $b$. Traite à part le cas $n$ impair (prends $b - a = 1$) et le cas $n$ multiple de $4$ (prends $b - a = 2$).

## Solution

L'équation se réécrit

$$n = b^2 - a^2 = (b-a)(b+a) .$$

La question devient donc : **quels entiers naturels sont une différence de deux carrés ?**

### Ce qui est impossible

Posons $u = b - a$ et $v = b + a$, de sorte que $n = uv$. Leur somme vaut

$$u + v = 2b ,$$

qui est un nombre pair. Deux entiers dont la somme est paire sont **de même parité** : ou bien tous les deux pairs, ou bien tous les deux impairs.

- Si $u$ et $v$ sont tous les deux impairs, leur produit $n = uv$ est impair.
- Si $u$ et $v$ sont tous les deux pairs, chacun apporte un facteur $2$, donc $n = uv$ est un multiple de $4$.

Dans les deux cas, $n$ est impair ou multiple de $4$. Autrement dit,

$$n \not\equiv 2 \pmod 4 .$$

Donc $n = 2, 6, 10, 14, \ldots$ ne peuvent jamais s'écrire ainsi.

### Ce qui est possible

Montrons réciproquement que tout $n$ qui n'est pas $\equiv 2 \pmod 4$ convient. Il suffit d'exhiber $a$ et $b$.

**Cas 1 : $n$ est impair.** Cherchons une solution avec $b - a = 1$, c'est-à-dire $b = a+1$. Alors

$$n = (b-a)(b+a) = 1 \times (2a + 1) = 2a+1 .$$

Comme $n$ est impair, on peut poser

$$a = \frac{n-1}{2}, \qquad b = \frac{n+1}{2},$$

qui sont bien des entiers naturels. Et en effet $b^2 - a^2 = (b-a)(b+a) = 1 \times n = n$.

*Exemple :* $n = 7$ donne $a = 3$, $b = 4$, et $16 - 9 = 7$. 

**Cas 2 : $n$ est un multiple de $4$.** Cherchons cette fois $b - a = 2$, c'est-à-dire $b = a + 2$. Alors

$$n = 2 \times (2a+2) = 4a + 4 ,$$

et comme $4$ divise $n$, on peut poser

$$a = \frac{n}{4} - 1, \qquad b = \frac{n}{4} + 1 .$$

Ce sont des entiers ; et $a \geqslant 0$ dès que $n \geqslant 4$. Le cas $n = 0$ se règle à part avec $a = b = 0$.

*Exemple :* $n = 12$ donne $a = 2$, $b = 4$, et $16 - 4 = 12$. 

### Conclusion

$$\boxed{n \text{ convient si et seulement si } n \text{ n'est pas congru à } 2 \text{ modulo } 4 ,}$$

c'est-à-dire si $n$ est impair ou multiple de $4$.

## Going further

La démonstration a la structure typique d'un problème de caractérisation : **une partie « impossible »** (une obstruction, ici une parité) **et une partie « construction »** (des exemples explicites). Aucune des deux ne suffit seule, et on ne peut pas répondre honnêtement sans les deux.

Remarque au passage une jolie conséquence : tout nombre impair $n = 2k+1$ s'écrit $(k+1)^2 - k^2$. C'est exactement la raison pour laquelle la suite des carrés $0, 1, 4, 9, 16, 25, \ldots$ a pour différences successives $1, 3, 5, 7, 9, \ldots$, tous les nombres impairs.

Pour continuer : combien y a-t-il de façons différentes d'écrire $n = 45$ comme une différence de deux carrés d'entiers naturels ? *(Indication : compte les factorisations $45 = uv$ avec $u \leqslant v$ de même parité.)*
