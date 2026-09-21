---
id: "8329"
title: "Quels entiers sont une différence de deux carrés ?"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [carres, parite, identite-remarquable, construction]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, cours du Groupe A"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Groupe A, « Modulo et factorisation » (Émile), exercice 12"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

Pour quels entiers naturels $n$ existe-t-il des entiers $a$ et $b$ tels que

$$n + a^2 = b^2 \;\;?$$

## Hints

1. Réécris l'équation sous la forme $n = b^2 - a^2$ : on cherche donc quels entiers s'écrivent comme une différence de deux carrés.
2. Fais la liste pour $n$ de $0$ à $12$ en essayant de petites valeurs de $a$ et $b$. Quels $n$ manquent à l'appel ?
3. Factorise $b^2 - a^2$. Les deux facteurs obtenus ne sont pas indépendants : que peux-tu dire de leur somme ?
4. Deux entiers dont la somme est paire sont de même parité. Regarde alors ce que cela impose à $n$.
5. Pour la réciproque, il faut **construire** $a$ et $b$. Traite le cas $n$ impair et le cas $n$ multiple de $4$ séparément, en cherchant la solution la plus simple possible : $b - a = 1$ dans un cas, $b - a = 2$ dans l'autre.

## Solution

L'équation se réécrit

$$n = b^2 - a^2 = (b - a)(b + a) .$$

La réponse est : **les entiers naturels $n$ qui ne sont pas congrus à $2$ modulo $4$.**

**Partie 1 : si $n \equiv 2 \pmod 4$, c'est impossible.**

Posons $u = b - a$ et $v = b + a$, de sorte que $n = uv$. Leur somme vaut

$$u + v = 2b ,$$

qui est paire. Donc $u$ et $v$ sont de même parité.

- Si $u$ et $v$ sont tous les deux impairs, leur produit $n$ est impair.
- Si $u$ et $v$ sont tous les deux pairs, écrivons $u = 2u'$ et $v = 2v'$ ; alors $n = 4u'v'$ est un multiple de $4$.

Dans les deux cas, $n$ est impair ou multiple de $4$ : autrement dit $n \not\equiv 2 \pmod 4$.

**Partie 2 : dans tous les autres cas, on construit une solution.**

*Si $n$ est impair.* Cherchons la solution la plus simple, celle où $b - a = 1$. Alors
$b = a + 1$ et

$$n = (b-a)(b+a) = 1 \times (2a + 1) = 2a+1 .$$

Il suffit donc de prendre

$$a = \frac{n-1}{2} \qquad \text{et} \qquad b = \frac{n+1}{2} ,$$

qui sont bien des entiers puisque $n$ est impair. Vérifions :

$$b^2 - a^2 = \left(\frac{n+1}{2}\right)^2 - \left(\frac{n-1}{2}\right)^2 = \frac{(n+1)^2 - (n-1)^2}{4} = \frac{4n}{4} = n .$$

*Si $n$ est multiple de $4$.* Cherchons cette fois $b - a = 2$. Alors $b = a+2$ et

$$n = 2 \times (2a+2) = 4a + 4 .$$

Il suffit donc de prendre

$$a = \frac{n}{4} - 1 \qquad \text{et} \qquad b = \frac{n}{4} + 1 ,$$

qui sont bien des entiers puisque $4$ divise $n$. Vérifions :

$$b^2 - a^2 = \left(\frac{n}{4}+1\right)^2 - \left(\frac{n}{4}-1\right)^2 = 4 \times \frac{n}{4} = n .$$

*(Pour $n = 0$ cela donne $a = -1$ et $b = 1$, ce qui convient ; on peut aussi prendre
$a = b = 0$.)*

**Conclusion.** Les entiers naturels $n$ qui s'écrivent $n = b^2 - a^2$ sont exactement ceux qui
**ne sont pas** de la forme $4k+2$.

## Going further

Les premiers entiers impossibles sont donc $2$, $6$, $10$, $14$, $18$, ... On peut le vérifier à
la main pour $2$ : les carrés sont $0, 1, 4, 9, 16, \ldots$ et leurs différences deux à deux ne
donnent jamais $2$, car deux carrés distincts diffèrent d'au moins $3$ dès que le plus petit est
non nul, et $1 - 0 = 1$, $4 - 0 = 4$.

Une conséquence jolie : tout entier impair est la différence de deux carrés consécutifs. En
effet $(k+1)^2 - k^2 = 2k+1$. C'est aussi la raison pour laquelle la somme des $n$ premiers
nombres impairs vaut $n^2$.
