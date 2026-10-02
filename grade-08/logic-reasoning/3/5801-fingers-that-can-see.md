---
id: "5801"
title: "Les doigts qui voient"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 20
tags: [cartes, denombrement, strategie, tour-de-magie]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Mathematical Magic for Muggles (Paul Zeitz)"
  reference: "ZeitzMathMuggles.pdf, problème 1 « Fingers That Can See » (solution p. 6)"
  url: "https://mathcircles.org/activity/mathematical-magic-for-muggles/"
  original_language: "en"
  local_copy: "sources/originals/namc/ZeitzMathMuggles.pdf"
---

## Statement

Un magicien étale sur une table $40$ cartes : $13$ d'entre elles montrent leur face, les
$27$ autres sont posées à l'envers. Il regarde attentivement la table, puis on lui bande
les yeux.

Les yeux bandés, il annonce qu'il va séparer les cartes en **deux paquets contenant
exactement le même nombre de cartes retournées face visible**. Il le fait, et il y arrive.

Le magicien a le droit de déplacer les cartes et d'en retourner autant qu'il veut. En
revanche, une fois les yeux bandés, il lui est impossible de savoir au toucher si une carte
donnée est face visible ou face cachée : les cartes sont toutes identiques au doigt.

Comment fait-il ? (Les deux paquets n'ont pas besoin d'avoir le même nombre de cartes.)

## Hints

1. Le magicien ne peut plus rien observer une fois les yeux bandés. Tout ce qu'il emporte de
   la table, c'est un **nombre**, celui qu'il a compté avant : $13$.
2. Ce nombre $13$ doit donc servir à quelque chose. Essaie de construire un paquet de
   $13$ cartes, prises complètement au hasard.
3. Appelle $f$ le nombre de cartes face visible qui se trouvent, par chance, dans ce paquet de
   $13$. Combien y en a-t-il dans le reste de la table ?
4. Combien de cartes face **cachée** contient le paquet de $13$ ? Et que se passerait-il si on
   retournait le paquet tout entier ?

## Solution

**La manœuvre.** Avant d'avoir les yeux bandés, le magicien compte les cartes face visible :
il y en a $13$. Les yeux bandés, il met de côté $13$ cartes **quelconques**, sans rien changer
à leur orientation, puis il **retourne ces $13$ cartes**, toutes ensemble. C'est terminé : les
deux paquets ont le même nombre de cartes face visible.

**Pourquoi cela marche.** Appelons $f$ le nombre de cartes face visible qui se sont trouvées,
par hasard, dans le paquet de $13$ mis de côté.

- Il y avait $13$ cartes face visible en tout, et $f$ d'entre elles sont dans le petit paquet.
  Donc le grand paquet (les $27$ cartes restantes) contient $13 - f$ cartes face visible.
- Le petit paquet contient $13$ cartes, dont $f$ sont face visible. Les autres, au nombre de
  $13 - f$, sont face cachée.

Maintenant on retourne le petit paquet tout entier. Chaque carte change de côté : les $f$ cartes
face visible deviennent face cachée, et les $13 - f$ cartes face cachée deviennent face visible.
Après ce retournement, le petit paquet contient donc $13 - f$ cartes face visible.

Le grand paquet en contient $13 - f$ lui aussi. Les deux nombres sont égaux, et cela **quelle que
soit** la valeur de $f$ : le magicien n'a jamais eu besoin de savoir laquelle.

**Conclusion.** Le magicien n'a aucun pouvoir : il lui suffit de compter les cartes face visible
avant qu'on lui bande les yeux, d'en isoler ce nombre-là au hasard, et de retourner le paquet
obtenu.

## Going further

Rien n'oblige à partir de $40$ et $13$. Si $n$ cartes sont face visible parmi un nombre
quelconque de cartes, le magicien isole $n$ cartes au hasard et les retourne : les deux paquets
ont alors chacun $n - f$ cartes face visible, où $f$ est le nombre de cartes face visible tombées
dans le paquet isolé.

Le tour fonctionne aussi avec des pièces de monnaie posées côté pile ou côté face, et il se fait
très bien dans le noir complet.
