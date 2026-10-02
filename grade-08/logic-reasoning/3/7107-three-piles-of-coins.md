---
id: "7107"
title: "Trois tas de pièces"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 30
tags: [invariant, divisibilite, disjonction-de-cas, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2013"
  reference: "stage_junior_2013.pdf, « Débutants : stratégies de base », mercredi et jeudi matin (François Lo Jacomo), exercice 10"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2013.pdf"
---

## Statement

On dispose de trois tas de pièces, contenant au départ $51$, $49$ et $5$ pièces.

À chaque étape, on a le droit de faire l'une des deux choses suivantes :

- **réunir** deux tas en un seul ;
- **partager** en deux moitiés égales un tas contenant un nombre pair de pièces.

Peut-on arriver à trois tas de $52$, $48$ et $5$ pièces ?

## Hints

1. Regarde le tout premier coup. Peux-tu partager un tas ? Que reste-t-il comme
   possibilité ?
2. Il y a trois façons de réunir deux tas. Traite-les une par une.
3. Dans chacun des trois cas, calcule le PGCD des deux tas obtenus. Montre ensuite que les
   deux opérations ne peuvent pas faire apparaître un tas qui ne soit pas multiple de ce
   PGCD.
4. Le nombre $52$ est-il multiple de $3$ ? de $5$ ? de $7$ ?

## Solution

**La réponse est non.**

**Le premier coup est forcé.** Les trois tas de départ contiennent $51$, $49$ et $5$ pièces,
et ces trois nombres sont **impairs**. On ne peut donc partager aucun tas. Le premier coup
est forcément une réunion, et il n'y a que trois réunions possibles.

**Cas 1 : on réunit $51$ et $49$.** On obtient les tas $100$ et $5$. Ces deux nombres sont
des multiples de $5$.

**Cas 2 : on réunit $49$ et $5$.** On obtient $54$ et $51$. Ces deux nombres sont des
multiples de $3$.

**Cas 3 : on réunit $51$ et $5$.** On obtient $56$ et $49$. Ces deux nombres sont des
multiples de $7$.

**Un multiple le reste.** Fixons un nombre impair $d$ (ce sera $5$, $3$ ou $7$) et supposons
qu'à un moment tous les tas sont des multiples de $d$. Montrons qu'après un coup, c'est
encore vrai.

- *Réunion.* Si $a$ et $b$ sont des multiples de $d$, alors $a + b$ aussi. Le nouveau tas
  est bien un multiple de $d$.
- *Partage.* On partage un tas pair $2k$, multiple de $d$, en deux tas de $k$ pièces. Comme
  $d$ divise $2k$ et que $d$ est impair, $d$ ne partage aucun facteur $2$ avec $2$ : il doit
  donc diviser $k$. Les deux nouveaux tas sont bien des multiples de $d$.

Dans les deux cas la propriété se transmet. Par conséquent, **tous les tas que l'on verra
ensuite, à n'importe quel moment, seront des multiples de $d$.**

**Conclusion.** Après le premier coup, on est dans l'un des trois cas, et donc tous les tas
suivants sont soit tous multiples de $5$, soit tous multiples de $3$, soit tous multiples de
$7$. Or

$$52 = 4 \times 13$$

n'est multiple ni de $3$, ni de $5$, ni de $7$. Un tas de $52$ pièces n'apparaîtra donc
jamais, et **la position demandée est hors d'atteinte.**

## Going further

Le point délicat du raisonnement est le partage, et il mérite qu'on s'y arrête. Si $d$ était
pair, l'argument tomberait : par exemple $d = 2$ divise $6$, mais quand on partage un tas de
$6$ on obtient deux tas de $3$, qui ne sont pas des multiples de $2$. C'est précisément parce
que $3$, $5$ et $7$ sont **impairs** que la propriété survit au partage.

Une question pour continuer : à partir de $51$, $49$ et $5$, quels triplets de tas peut-on
atteindre ?
