---
id: "11074"
title: "Des rectangles découpés en carrés, un nombre premier de carrés"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [pgcd, nombres-premiers, decoupage, rectangle, divisibilite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 3 (arithmétique)"
  reference: "2025-01_Sujet-envoi-3-2024-2025.pdf, Exercices Seniors, exercice 12 ; corrigé 2025-03_Corrige-envoi-3-2024-2025.pdf. Le corrigé passe par la fraction irréductible b/a ; la solution ci-dessous utilise le PGCD de a et b."
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Sujet-envoi-3-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-01_Sujet-envoi-3-2024-2025.pdf"
---

## Statement

Soient $a$ et $b$ deux entiers strictement positifs. Martin donne à chacun des $n$ élèves d'un stage, avec $n \geqslant 2$, un rectangle de dimensions $a \times b$. Chaque élève découpe son rectangle en petits carrés tous identiques, dont le côté est un nombre entier. La taille des carrés peut changer d'un élève à l'autre.

Martin ramasse ensuite tous les petits carrés et constate que leur nombre total est un nombre premier. Montrer que $a = b$.

## Hints

1. Si un élève découpe son rectangle en carrés de côté $d$, pourquoi $d$ divise-t-il $a$ et $b$ ? Combien de carrés obtient-il ?
2. Note $g = \mathrm{PGCD}(a, b)$ et écris $a = g a'$, $b = g b'$. Le côté $d$ divise $g$.
3. Montre que $a' b'$ divise le nombre de carrés de chaque élève, donc le nombre total. Utilise ensuite que ce total est premier, et qu'il y a au moins deux élèves.

## Solution

Numérotons les élèves de $1$ à $n$, et notons $d_i$ le côté des carrés de l'élève numéro $i$.

**Étape 1 : le nombre de carrés de chaque élève.**

Le long d'un côté de longueur $a$ du rectangle, les carrés qui touchent ce côté le recouvrent exactement, sans se chevaucher, chacun sur une longueur $d_i$. Donc $a$ est un multiple de $d_i$. De même, $b$ est un multiple de $d_i$. L'élève $i$ obtient $\frac{a}{d_i}$ rangées de $\frac{b}{d_i}$ carrés, soit $\frac{a}{d_i} \times \frac{b}{d_i}$ carrés.

**Étape 2 : un facteur commun.**

Notons $g = \mathrm{PGCD}(a, b)$, et écrivons $a = g a'$ et $b = g b'$ avec $a'$ et $b'$ entiers. Le nombre $d_i$ divise $a$ et $b$, donc il divise leur PGCD : on peut écrire $g = d_i e_i$ avec $e_i$ entier, $e_i \geqslant 1$. Alors
$$\frac{a}{d_i} = \frac{g a'}{d_i} = a' e_i \qquad \text{et} \qquad \frac{b}{d_i} = b' e_i,$$
donc l'élève $i$ obtient $a' b' e_i^2$ carrés. Le nombre total de carrés vaut
$$N = a' b' \left(e_1^2 + e_2^2 + \cdots + e_n^2\right).$$

**Étape 3 : conclusion.**

Le nombre $a' b'$ divise $N$, qui est premier, donc $a' b' = 1$ ou $a' b' = N$.

Si $a' b' = N$, alors $e_1^2 + \cdots + e_n^2 = 1$. C'est impossible : chaque $e_i^2$ vaut au moins $1$ et il y a au moins deux élèves, donc cette somme vaut au moins $2$.

Donc $a' b' = 1$, ce qui force $a' = b' = 1$, puis $a = g = b$.

## Going further

Que se passe-t-il s'il n'y a qu'un seul élève ? Trouver tous les rectangles $a \times b$ qu'on peut découper en un nombre premier de carrés identiques de côté entier.

*Réponse :* avec les notations de la solution, le nombre de carrés vaut $a' b' e^2$. Il est premier seulement si $e = 1$ et si $a' b'$ est premier, c'est-à-dire si l'un des nombres $a'$, $b'$ vaut $1$ et l'autre est un nombre premier $p$. Ce sont les rectangles $g \times pg$, découpés en $p$ carrés de côté $g$. Par exemple, un rectangle $3 \times 6$ se découpe en $2$ carrés de côté $3$.
