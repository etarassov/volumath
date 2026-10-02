---
id: "11412"
title: "Un rectangle bicolore dans un polygone à cent côtés"
grade: 8
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [tiroirs, coloriage, polygone, rectangle]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 4 (combinatoire)"
  reference: "2021-01_sujet-envoi-4.pdf, Exercices Juniors, exercice 4 (le même texte est l'exercice 11 des Seniors) ; corrigé 2021-03_Corrige-envoi-4.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/01/sujet-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-01_sujet-envoi-4.pdf"
---

## Statement

On colorie chacun des $100$ sommets d'un polygone régulier à $100$ côtés avec l'une de $10$
couleurs.

Montrer qu'on peut toujours trouver $4$ sommets qui forment un rectangle et sur lesquels on ne voit
pas plus de $2$ couleurs différentes.

## Hints

1. Un polygone régulier à $100$ côtés a un centre. Pour chaque sommet, il y a un sommet « en face »,
   symétrique par rapport à ce centre.
2. Prends deux diamètres du polygone, c'est-à-dire deux segments qui joignent un sommet au sommet
   d'en face. Que forment leurs quatre extrémités ?
3. Chaque diamètre a deux extrémités : elles ont soit la même couleur, soit deux couleurs
   différentes. Combien y a-t-il de paires de deux couleurs différentes possibles ?

## Solution

**Les diamètres.** Le polygone régulier a un centre $O$, à égale distance de tous les sommets. Comme
$100$ est pair, chaque sommet a un sommet « en face », son symétrique par rapport à $O$. On peut donc
grouper les $100$ sommets en $50$ paires de sommets opposés. Le segment qui joint deux sommets
opposés passe par $O$ et s'appelle un **diamètre**. Il y a $50$ diamètres.

**Deux diamètres donnent un rectangle.** Prenons deux diamètres $[AC]$ et $[BD]$. Le quadrilatère
$ABCD$ a des diagonales $[AC]$ et $[BD]$ qui ont le même milieu $O$ et la même longueur (deux fois la
distance de $O$ à un sommet). Un quadrilatère dont les diagonales ont le même milieu et la même
longueur est un rectangle. Donc les extrémités de deux diamètres forment toujours un rectangle.

Il suffit donc de trouver deux diamètres dont les quatre extrémités utilisent au plus $2$ couleurs.

**Deux sortes de diamètres.** Un diamètre est *unicolore* si ses deux extrémités ont la même couleur,
et *bicolore* sinon.

- S'il y a au moins deux diamètres unicolores, leurs quatre extrémités n'utilisent que $2$ couleurs
  au plus. C'est gagné.
- Sinon, il y a au plus un diamètre unicolore, donc au moins $49$ diamètres bicolores.

**Le principe des tiroirs.** Un diamètre bicolore porte une paire de deux couleurs différentes,
par exemple {rouge, bleu}. Avec $10$ couleurs, le nombre de paires possibles est

$$\frac{10 \times 9}{2} = 45.$$

On a au moins $49$ diamètres bicolores et seulement $45$ paires possibles. Deux diamètres bicolores
portent donc la même paire de couleurs. Leurs quatre extrémités forment un rectangle qui n'utilise
que ces $2$ couleurs.

**Conclusion.** Dans tous les cas, il existe un rectangle dont les $4$ sommets sont des sommets du
polygone et ne portent pas plus de $2$ couleurs.

## Going further

Avec $11$ couleurs, le résultat devient faux. Pour le voir, on peut admettre (ou démontrer avec
l'angle droit inscrit dans un demi-cercle) que les diagonales d'un rectangle dont les sommets sont
sur un cercle sont des diamètres de ce cercle. Les rectangles cherchés viennent donc tous de deux
diamètres. Avec $11$ couleurs, il y a $\frac{11 \times 10}{2} = 55$ paires de couleurs, plus que les
$50$ diamètres : on donne à chaque diamètre une paire différente. Vérifier qu'aucun rectangle n'a
alors $2$ couleurs ou moins.
