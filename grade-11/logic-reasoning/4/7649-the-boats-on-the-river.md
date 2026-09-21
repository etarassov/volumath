---
id: "7649"
title: "Les bateaux sur la rivière"
grade: 11
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [invariant, mouvement relatif, changement de point de vue]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, cours de stratégies de base du groupe B"
  reference: "stage_ete_2013.pdf, chapitre II, groupe B, « Stratégies de base » (Vincent Jugé), exercice sur les bateaux"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Sur une rivière circulaire, $n$ bateaux naviguent tous à la même vitesse, chacun soit dans le sens des aiguilles d'une montre, soit dans le sens contraire.

Quand deux bateaux se rencontrent, ils font tous les deux demi-tour aussitôt et repartent chacun dans la direction d'où il venait. Chaque bateau garde donc toujours la même vitesse, seul son sens change.

Démontrer qu'au bout d'un certain temps, tous les bateaux se retrouvent exactement à leur position de départ, avec leur sens de départ.

## Hints

1. Imaginez que les bateaux, au lieu de faire demi-tour, **se traversent** et continuent tout droit. Qu'est-ce que cela change à l'image vue d'en haut ?
2. Dans cette version simplifiée, où sont les bateaux au bout d'un tour complet de rivière ?
3. Revenez à la vraie situation : les positions occupées sont les mêmes, mais les étiquettes sur les bateaux ont pu être échangées. Comment ?
4. Les bateaux ne peuvent pas se doubler. Que dit cela sur l'ordre dans lequel ils sont disposés autour de la rivière ?

## Solution

**L'astuce : échanger les étiquettes.**

Imaginons qu'au lieu de faire demi-tour, deux bateaux qui se rencontrent **échangent leur nom** et continuent chacun tout droit.

Regardé d'en haut, sans les noms, c'est exactement la même image : dans les deux versions, juste après la rencontre, il y a un bateau qui part vers la gauche et un bateau qui part vers la droite depuis le point de rencontre. Seule l'étiquette collée dessus diffère.

Dans cette version avec échange d'étiquettes, **chaque coque va tout droit pour toujours**, à vitesse constante.

**Étape 1 : après un tour, chaque coque est revenue à son point de départ.**

Notons $L$ la longueur de la rivière et $v$ la vitesse commune. Au bout du temps

$$T = \frac{L}{v},$$

chaque coque a parcouru exactement un tour de rivière, dans un sens ou dans l'autre. Elle est donc revenue à l'endroit où elle était au départ, et elle avance toujours dans le même sens.

Donc à l'instant $T$, **l'ensemble des positions occupées et des sens de déplacement est exactement celui du départ.** Chaque position de départ est réoccupée, par un bateau allant dans le même sens qu'au départ.

**Étape 2 : les vrais bateaux sont donc au bon endroit, mais peut-être pas le bon.**

Revenons aux vrais bateaux, ceux qui font demi-tour. À l'instant $T$, ils occupent bien les $n$ positions de départ, avec les bons sens. Mais rien ne garantit encore que le bateau numéro $1$ soit revenu à la position du bateau numéro $1$ : les noms ont pu tourner.

**Étape 3 : l'ordre circulaire ne change jamais.**

Voici le point clé. Deux vrais bateaux ne se traversent jamais : quand ils se rencontrent, ils repartent en arrière. Donc **l'ordre dans lequel les bateaux sont disposés autour de la rivière ne change jamais**. Si en partant on lit, en tournant dans le sens des aiguilles d'une montre, les noms $B_1, B_2, \ldots, B_n$, alors à tout instant on lit encore $B_1, B_2, \ldots, B_n$ dans cet ordre circulaire.

Combinons avec l'étape 2. À l'instant $T$, les $n$ positions de départ sont occupées et l'ordre circulaire est conservé. Par conséquent, la configuration à l'instant $T$ se déduit de celle du départ par une **rotation des noms** : il existe un entier $k$ entre $0$ et $n-1$ tel que le bateau $B_i$ occupe la position de départ de $B_{i+k}$ (les indices étant pris modulo $n$).

**Étape 4 : recommencer.**

Cette même rotation d'un cran de $k$ se produit sur chaque intervalle de temps de longueur $T$, puisque la situation à l'instant $T$ est identique à celle du départ, aux noms près.

Donc à l'instant $nT$, la rotation a été appliquée $n$ fois : chaque bateau a avancé de $nk$ crans dans la liste des positions de départ. Or $nk$ est un multiple de $n$, donc la rotation de $nk$ crans est l'identité.

**Conclusion.**

À l'instant $nT = \dfrac{nL}{v}$, chaque bateau est exactement à sa position de départ, allant dans son sens de départ. $\blacksquare$

## Going further

Le cœur de cette solution est un **changement de point de vue** : on remplace un mouvement compliqué (avec demi-tours) par un mouvement simple (tout droit), en acceptant de perdre la trace des identités. On récupère ensuite les identités grâce à un invariant, ici l'ordre circulaire.

La même astuce résout un problème classique de fourmis : des fourmis marchent sur un bâton de $1$ mètre à $1$ m/min, chacune dans un sens, et font demi-tour quand elles se croisent. Au bout de combien de temps le bâton est-il forcément vide ? En laissant les fourmis se traverser, la réponse tombe immédiatement : **une minute**, car chaque « traversée » parcourt au plus la longueur du bâton.

On peut aussi se demander quel est le plus petit temps garanti dans notre problème. Il vaut $nT$ dans le pire des cas, mais souvent beaucoup moins : si tous les bateaux vont dans le même sens, il n'y a aucune rencontre et tout revient au départ dès l'instant $T$.
