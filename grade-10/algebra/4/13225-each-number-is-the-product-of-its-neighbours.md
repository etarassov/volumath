---
id: "13225"
title: "Chaque nombre est le produit de ses voisins"
grade: 10
theme: algebra
difficulty: 4
duration_min: 30
tags: [cercle, produit, periodicite, construction]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2016 (test de rentrée OFM)"
  reference: "2017-09_coupe_automne_2016.pdf, exercices lycée, exercice 6 ; corrigé 2017-09_coupe_automne_2016_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2016.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2016.pdf"
---

## Statement

Déterminer tous les entiers $n \geqslant 3$ tels que l'on puisse placer $n$ nombres réels, deux à deux distincts, sur un cercle, de sorte que chacun de ces nombres soit le produit de ses deux voisins.

## Hints

1. Note $a_1, a_2, \ldots, a_n$ les nombres dans l'ordre du cercle, avec $a_{n+1} = a_1$, $a_{n+2} = a_2$, et ainsi de suite. Peut-il y avoir un zéro ?
2. Écris la condition pour $a_{i+1}$ et pour $a_{i+2}$, puis multiplie les deux égalités membre à membre.
3. Tu dois trouver $a_i \, a_{i+3} = 1$. Que vaut alors $a_{i+6}$ ?
4. Puisque les nombres sont distincts, que doit vérifier $n$ ? Étudie les cas qui restent.

## Solution

Notons $a_1, a_2, \ldots, a_n$ les nombres dans l'ordre où ils sont placés sur le cercle. Pour parler simplement des voisins, on prolonge la numérotation en tournant : $a_{n+1} = a_1$, $a_{n+2} = a_2$, etc. La condition s'écrit, pour tout $i$,

$$a_{i+1} = a_i \, a_{i+2}.$$

**Aucun nombre n'est nul.** Si un nombre $a_i$ valait $0$, son voisin $a_{i+1}$ vaudrait $a_i \, a_{i+2} = 0$. Deux nombres placés à des endroits différents seraient égaux, ce qui est interdit.

**Une relation à distance $3$.** Écrivons la condition pour $a_{i+1}$ et pour $a_{i+2}$ :

$$a_{i+1} = a_i \, a_{i+2} \qquad \text{et} \qquad a_{i+2} = a_{i+1} \, a_{i+3}.$$

En multipliant membre à membre, $a_{i+1} \, a_{i+2} = a_i \, a_{i+2} \, a_{i+1} \, a_{i+3}$. On peut diviser par $a_{i+1} \, a_{i+2}$, qui n'est pas nul : on obtient

$$a_i \, a_{i+3} = 1, \qquad \text{donc} \qquad a_{i+3} = \frac{1}{a_i}.$$

En recommençant à partir de $a_{i+3}$, on trouve $a_{i+6} = \frac{1}{a_{i+3}} = a_i$.

**Donc $n$ divise $6$.** En avançant de $6$ places sur le cercle à partir de $a_1$, on retombe sur le même nombre $a_1$. Comme les nombres sont deux à deux distincts, on retombe forcément à la même place : $6$ places correspondent à un nombre entier de tours. Donc $n$ divise $6$, et comme $n \geqslant 3$, on a $n = 3$ ou $n = 6$.

**Le cas $n = 3$ est impossible.** Avec $3$ nombres, avancer de $3$ places ramène à la même place, donc $a_{i+3} = a_i$, et la relation $a_i \, a_{i+3} = 1$ devient $a_i^2 = 1$. Chaque nombre vaut alors $1$ ou $-1$, et on ne peut pas trouver trois nombres distincts parmi deux valeurs.

**Le cas $n = 6$ est possible.** Plaçons, dans cet ordre sur le cercle,

$$2, \quad 3, \quad \tfrac{3}{2}, \quad \tfrac{1}{2}, \quad \tfrac{1}{3}, \quad \tfrac{2}{3}.$$

Ces six nombres sont distincts, et on vérifie chaque condition :

- $3 = 2 \times \frac{3}{2}$ ;
- $\frac{3}{2} = 3 \times \frac{1}{2}$ ;
- $\frac{1}{2} = \frac{3}{2} \times \frac{1}{3}$ ;
- $\frac{1}{3} = \frac{1}{2} \times \frac{2}{3}$ ;
- $\frac{2}{3} = \frac{1}{3} \times 2$ ;
- $2 = \frac{2}{3} \times 3$.

**Conclusion.** Le seul entier qui convient est $n = 6$.

## Going further

D'où vient l'exemple ? Si l'on choisit librement les deux premiers nombres $a_1 = x$ et $a_2 = y$, la condition $a_{i+2} = \frac{a_{i+1}}{a_i}$ donne toute la suite :

$$x, \quad y, \quad \frac{y}{x}, \quad \frac{1}{x}, \quad \frac{1}{y}, \quad \frac{x}{y},$$

puis on retombe sur $x$ et $y$. L'exemple correspond à $x = 2$ et $y = 3$. Pour quelles valeurs de $x$ et $y$ les six nombres sont-ils distincts ?
