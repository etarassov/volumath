---
id: "7707"
title: "Les vingt cailloux du bon calife"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 30
tags: [jeu, strategie-gagnante, multiples, parite]
adapted_from: null
see_also: ["0877"]
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, évaluation initiale du premier jour"
  reference: "stage_ete_2014.pdf, « Coupe Animath et évaluation initiale », évaluation initiale, exercice supplémentaire 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

Dans la ville de Bagdad, le bon calife vient d'inventer un jeu. On pose vingt cailloux sur une table. Chacun des deux joueurs, à son tour, prend **un, deux ou cinq** cailloux. Celui qui prend le ou les derniers cailloux gagne.

Le calife adore ce jeu : comme il est calife, c'est lui qui joue le premier, et il gagne toujours.

Comment fait-il ?

## Hints

1. Essaie d'abord avec très peu de cailloux. Avec $1$, $2$ ou $5$ cailloux devant soi, on gagne tout de suite. Et avec $3$ ?
2. Avec $3$ cailloux devant soi, essaie les coups possibles : dans chaque cas, combien en reste-t-il à l'adversaire, et qui gagne ?
3. Le nombre $3$ a l'air d'être la clé. Vérifie : avec $6$ cailloux devant soi, peut-on s'en sortir ?
4. Attention, on peut prendre $5$ cailloux, ce qui dépasse $3$. Si l'adversaire en prend $5$, combien dois-tu en prendre pour que le total des deux coups soit encore un multiple de $3$ ?
5. Quel reste laisse $20$ dans la division par $3$ ?

## Solution

**Le calife prend $2$ cailloux au premier coup, et il laisse ensuite toujours un multiple de $3$ à son adversaire.**

**L'idée : les tas dont le nombre de cailloux est un multiple de $3$ sont perdants.**

Précisons : *si c'est votre tour et qu'il reste devant vous un multiple de $3$ cailloux, vous êtes perdu*, à condition que l'autre joue bien.

**Pourquoi ?** Supposons qu'il reste $3m$ cailloux, avec $m \geqslant 1$, et que ce soit à vous de jouer. Vous devez prendre $1$, $2$ ou $5$ cailloux. Votre adversaire répond ainsi :

- si vous prenez $1$, il prend $2$ : en tout $3$ cailloux sont partis ;
- si vous prenez $2$, il prend $1$ : en tout $3$ cailloux sont partis ;
- si vous prenez $5$, il prend $1$ : en tout $6$ cailloux sont partis.

Dans les trois cas, le nombre de cailloux enlevés pendant l'aller-retour est un multiple de $3$, donc ce qui reste, $3(m-1)$ ou $3(m-2)$, est encore un multiple de $3$, et c'est de nouveau à vous de jouer.

**L'adversaire peut-il toujours répondre ?** Oui. Comme $3m$ est un multiple de $3$ non nul, il y a au moins $3$ cailloux avant votre coup.

- Si vous prenez $1$, il en reste au moins $2$ : l'adversaire peut en prendre $2$.
- Si vous prenez $2$, il en reste au moins $1$ : l'adversaire peut en prendre $1$.
- Si vous prenez $5$, c'est qu'il y en avait au moins $5$, donc au moins $6$ puisque c'est un multiple de $3$ ; il en reste au moins $1$ et l'adversaire peut en prendre $1$.

**Comment cela se termine.** Le nombre de cailloux, vu juste avant chacun de vos coups, forme une suite de multiples de $3$ strictement décroissante :

$$3m \; \longrightarrow \; 3m' \; \longrightarrow \; \cdots \; \longrightarrow \; 3 \; \longrightarrow \; 0 .$$

On finit donc par arriver à $0$ juste avant votre coup, c'est-à-dire que c'est votre adversaire qui vient de prendre le dernier caillou. Vous avez perdu.

**On applique à $20$.** La division de $20$ par $3$ donne

$$20 = 6 \times 3 + 2 .$$

Ce n'est pas un multiple de $3$. Le calife prend donc $2$ cailloux et laisse $18$ à son adversaire, c'est-à-dire un multiple de $3$. D'après ce qui précède, l'adversaire est perdu.

**Conclusion : le calife prend $2$ cailloux au premier coup, puis répond $2$ à un $1$, $1$ à un $2$, et $1$ à un $5$. Il prend toujours le dernier caillou.**

## Going further

Ce qui surprend ici, c'est que le coup « prendre $5$ » ne sert à rien : $5$ laisse le même reste que $2$ dans la division par $3$, donc il ne permet pas de sortir du piège. On pourrait ajouter la possibilité de prendre $8$, $11$, $14$ cailloux sans rien changer à la stratégie.

En revanche, si l'on remplaçait $5$ par $4$, tout changerait : les coups $1$, $2$, $4$ ne laissent plus les restes $1$ et $2$ seulement, et il faudrait tout recommencer.
