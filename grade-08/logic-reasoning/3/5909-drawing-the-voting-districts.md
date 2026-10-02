---
id: "5909"
title: "Découper les circonscriptions"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 30
tags: [majorite, denombrement, modelisation, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Gerrymandering (San Francisco Math Circle / Julia Robinson Mathematics Festival)"
  reference: "Gerrymandering.pdf, « Warm-Up », questions 1 à 3"
  url: "https://mathcircles.org/"
  original_language: "en"
  local_copy: "sources/originals/namc/Gerrymandering.pdf"
---

## Statement

Dans un village de $25$ électeurs, deux listes s'affrontent, la liste **Rouge** et la liste **Bleue**. Chaque électeur a déjà décidé pour qui il vote et ne changera pas d'avis.

L'élection ne se joue pas au vote direct. On répartit les $25$ électeurs en $5$ **circonscriptions** de $5$ électeurs chacune. Dans chaque circonscription, la liste qui a le plus de voix gagne cette circonscription, et remporte une voix. La liste qui gagne le plus de circonscriptions remporte l'élection.

Celui qui découpe les circonscriptions connaît les intentions de vote et peut regrouper les électeurs comme il veut.

1. Il y a $15$ électeurs Rouges et $10$ Bleus. Peut-on découper les circonscriptions de façon que **Bleu** remporte l'élection ?
2. Même question avec $16$ Rouges et $9$ Bleus.
3. Même question avec $17$ Rouges et $8$ Bleus.
4. De façon générale, quel est le plus petit nombre d'électeurs Bleus qui permet à Bleu de remporter l'élection ?

## Hints

1. Une circonscription compte $5$ électeurs, donc il n'y a jamais d'égalité : pour la gagner, il faut au moins combien de voix ?
2. Pour remporter l'élection, il faut gagner au moins combien de circonscriptions sur $5$ ?
3. Combine les deux réponses : combien d'électeurs Bleus faut-il **au minimum** rien que pour les circonscriptions gagnées par Bleu ?
4. L'idée est de « gaspiller » les voix adverses : on entasse les Rouges dans peu de circonscriptions, et on fait gagner Bleu de justesse ailleurs.
5. Pour les cas possibles, il ne suffit pas d'avoir assez d'électeurs Bleus : vérifie aussi qu'il reste de quoi remplir les autres circonscriptions.

## Solution

**Réponses : 1. oui ; 2. oui ; 3. non ; 4. il faut au moins $9$ électeurs Bleus, et $9$ suffisent.**

### La condition nécessaire

Une circonscription compte $5$ électeurs. Pour la gagner, une liste a besoin de la majorité, donc d'au moins $3$ voix. Il n'y a jamais d'égalité, puisque $5$ est impair.

Pour remporter l'élection, il faut gagner au moins $3$ circonscriptions sur $5$.

Ces $3$ circonscriptions sont disjointes, et chacune contient au moins $3$ électeurs Bleus. Il faut donc au moins
$$3 \times 3 = 9$$
électeurs Bleus dans le village. **Si Bleu a $8$ électeurs ou moins, Bleu ne peut pas gagner, quel que soit le découpage.**

### La condition est suffisante

Supposons maintenant que Bleu ait au moins $9$ électeurs, donc Rouge au plus $16$. Voici un découpage qui fait gagner Bleu.

- Trois circonscriptions avec $3$ Bleus et $2$ Rouges chacune : elles consomment $9$ Bleus et $6$ Rouges, et Bleu les gagne toutes les trois.
- Les deux circonscriptions restantes reçoivent les $10$ électeurs qui restent, quels qu'ils soient. Peu importe qui les gagne.

Ce découpage est réalisable, car il reste bien $25 - 15 = 10$ électeurs pour les deux dernières circonscriptions. Bleu gagne $3$ circonscriptions sur $5$, donc l'élection.

### Les trois cas de l'énoncé

**1. $15$ Rouges, $10$ Bleus.** Bleu a $10 \geq 9$ électeurs : c'est possible. Par exemple :

| Circonscription | Bleus | Rouges | Gagnant |
|---|---|---|---|
| 1 | 3 | 2 | Bleu |
| 2 | 3 | 2 | Bleu |
| 3 | 3 | 2 | Bleu |
| 4 | 1 | 4 | Rouge |
| 5 | 0 | 5 | Rouge |

Total : $10$ Bleus, $15$ Rouges. Bleu gagne $3$ à $2$, alors qu'il n'a que $10$ voix sur $25$.

**2. $16$ Rouges, $9$ Bleus.** Bleu a exactement $9$ électeurs : c'est encore possible, tout juste.

| Circonscription | Bleus | Rouges | Gagnant |
|---|---|---|---|
| 1 | 3 | 2 | Bleu |
| 2 | 3 | 2 | Bleu |
| 3 | 3 | 2 | Bleu |
| 4 | 0 | 5 | Rouge |
| 5 | 0 | 5 | Rouge |

Bleu gagne $3$ à $2$ avec seulement $9$ voix sur $25$, soit à peine plus du tiers.

**3. $17$ Rouges, $8$ Bleus.** Bleu n'a que $8$ électeurs, et il lui en faudrait $9$. **C'est impossible**, quel que soit le découpage.

### Conclusion

Bleu peut remporter l'élection si et seulement s'il a au moins $9$ électeurs sur $25$. Avec $9$ voix sur $25$, soit $36\,\%$ des électeurs, on peut donc gagner une élection découpée de cette façon.

## Going further

1. Reprends tout avec $n^2$ électeurs répartis en $n$ circonscriptions de $n$ électeurs, $n$ étant impair. Combien d'électeurs faut-il au minimum pour gagner ? Compare la proportion obtenue avec $36\,\%$ quand $n$ devient grand.
2. Et si $n$ est pair ? Il faut alors décider ce qui se passe en cas d'égalité dans une circonscription.
3. Dans la vraie vie, une circonscription doit être d'un seul tenant sur la carte. Dessine une grille $5 \times 5$, place $9$ électeurs Bleus, et essaie de découper cinq circonscriptions d'un seul tenant, de $5$ cases chacune, qui font gagner Bleu. Est-ce toujours possible ?
4. Toujours sur une grille $5 \times 5$ : peux-tu placer $10$ électeurs Bleus de telle sorte qu'**aucun** découpage en circonscriptions d'un seul tenant ne fasse gagner Bleu ?
