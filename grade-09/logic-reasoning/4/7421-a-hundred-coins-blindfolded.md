---
id: "7421"
title: "Cent pièces, les yeux bandés"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 25
tags: [strategie, denombrement, astuce, information]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2010, chasse au trésor"
  reference: "stage_ete_2010.pdf, « Activités ludiques », chasse au trésor, énigmes communes, exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2010.pdf"
---

## Statement

On pose $100$ pièces de monnaie sur une table. Exactement $80$ d'entre elles sont côté **pile**
vers le haut, et les $20$ autres côté **face**. Mais tu as les yeux bandés : en touchant une
pièce, il est impossible de savoir dans quel sens elle est posée.

Tu peux déplacer les pièces à ta guise, et tu peux en retourner autant que tu veux.

Peux-tu séparer les $100$ pièces en deux tas contenant **le même nombre de pièces côté pile** ?

Les deux tas n'ont pas besoin d'avoir le même nombre de pièces.

## Hints

1. On ne te demande pas de savoir combien de pièces côté pile se trouvent dans chaque tas, mais
   seulement que les deux nombres soient égaux. Tu n'as donc besoin d'aucune information : tu
   cherches une manœuvre aveugle qui marche à tous les coups.
2. Essaie de fabriquer un tas d'une taille bien choisie, puis de le retourner **entièrement**.
   La seule information que tu possèdes, c'est le nombre $80$ : c'est donc sûrement la taille à
   choisir.
3. Mets $80$ pièces dans un tas, sans regarder. Appelle $j$ le nombre de pièces côté pile qui s'y
   trouvent. Combien y en a-t-il dans l'autre tas ? Et combien y en aura-t-il dans le premier
   après retournement ?

## Solution

**Oui, c'est possible, et la manœuvre ne demande aucune information.**

**La stratégie.**

1. Compte $80$ pièces au toucher et mets-les de côté : appelons ce groupe le tas $A$. Les $20$
   pièces restantes forment le tas $B$.
2. **Retourne** les $80$ pièces du tas $A$, une par une.

C'est tout.

**Pourquoi cela marche.**

Notons $j$ le nombre de pièces côté **pile** qui se trouvent dans le tas $A$ juste après
l'étape 1. Ce nombre est inconnu, et c'est sans importance.

Il y a $80$ pièces côté pile en tout sur la table. Le tas $B$ en contient donc
$$80 - j.$$

Regardons maintenant le tas $A$. Il contient $80$ pièces, dont $j$ côté pile, donc $80 - j$ côté
face. Quand on le retourne entièrement, chaque pièce change de côté : les $80 - j$ pièces qui
étaient côté face se retrouvent côté pile.

Après le retournement, le tas $A$ contient donc $80 - j$ pièces côté pile.

**Bilan.**

- tas $A$ : $80 - j$ pièces côté pile ;
- tas $B$ : $80 - j$ pièces côté pile (on n'y a pas touché).

Les deux nombres sont égaux, quelle que soit la valeur de $j$. **La manœuvre réussit à tous les
coups.**

*Remarque.* Le nombre $80$ n'a pas été choisi au hasard : c'est le nombre de pièces côté pile. En
formant un tas qui a exactement cette taille, on s'arrange pour que « les pièces côté face du tas
$A$ » et « les pièces côté pile du tas $B$ » soient toujours en même nombre, et le retournement
transforme les premières en pièces côté pile.

*Si l'on avait demandé le même nombre de pièces côté **face***, il aurait suffi d'appliquer
exactement la même méthode avec un tas de $20$ pièces, puisque $20$ est cette fois le nombre de
pièces côté face.

## Going further

Avec $100$ pièces dont $n$ sont côté face, la même astuce marche-t-elle pour tout $n$ ? Et si tu
ne connaissais pas $n$, pourrais-tu encore y arriver ?
