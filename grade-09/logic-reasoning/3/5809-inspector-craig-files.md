---
id: "5809"
title: "Les dossiers de l'inspecteur Craig"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 30
tags: [logique, implication, disjonction-de-cas, enquete]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Knights and Knaves: A journey to the land of logic (Altha Rodin, d'après Raymond Smullyan)"
  reference: "RodinKnightsandKnaves.pdf, partie 6 « From the files of Inspector Craig », scénarios 1 et 2 (handout sans solutions)"
  url: "https://mathcircles.org/activity/knights-and-knaves-a-journey-to-the-land-of-logic/"
  original_language: "en"
  local_copy: "sources/originals/namc/RodinKnightsandKnaves.pdf"
---

## Statement

L'inspecteur Craig, de Scotland Yard, a bien voulu ouvrir deux de ses dossiers. Dans chacun, trois
malfaiteurs connus, $A$, $B$ et $C$, sont soupçonnés. Chacun des trois est soit coupable, soit
innocent.

**Premier dossier.** Un magasin a été entièrement dévalisé, et le butin est parti en voiture.
L'enquête a établi trois faits :

1. Personne d'autre que $A$, $B$ et $C$ n'a participé au vol.
2. $C$ ne fait jamais un coup sans prendre $A$ pour complice, éventuellement avec d'autres.
3. $B$ ne sait pas conduire.

$A$ est-il innocent ou coupable ?

**Deuxième dossier.** Cette fois l'enquête a établi ceci :

1. Si $A$ est coupable et $B$ innocent, alors $C$ est coupable.
2. $C$ ne travaille jamais seul.
3. $A$ ne travaille jamais avec $C$.
4. Personne d'autre que $A$, $B$ et $C$ n'a participé, et au moins l'un des trois est coupable.

« Pas grand-chose à en tirer, j'en ai peur », soupire le sergent McPherson. « Peut-on dire, à
partir de ces faits, lesquels sont innocents et lequel est coupable ? »

« Non », répond Craig, « mais il y a là de quoi en inculper un à coup sûr. »

Lequel ? Et pourquoi Craig a-t-il raison de dire qu'on ne peut pas trancher pour les deux
autres ?

## Hints

1. Dans le premier dossier, le fait 3 n'est là que pour une seule raison : le butin est parti en
   voiture. Qu'est-ce que cela interdit ?
2. Dans le premier dossier, sépare deux cas : $C$ est coupable, ou $C$ est innocent. Traite-les
   séparément.
3. Dans le second dossier, essaie de supposer $B$ innocent, et cherche une contradiction.
4. Sous l'hypothèse « $B$ innocent », le fait 4 te laisse deux possibilités : $A$ coupable, ou
   $C$ coupable. Regarde ce que chacune entraîne, avec les faits 1, 2 et 3.
5. Pour la dernière partie de la question, il ne faut rien démontrer : il suffit d'exhiber deux
   répartitions des culpabilités compatibles avec les quatre faits et qui ne s'accordent pas sur
   $A$.

## Solution

**Premier dossier : $A$ est coupable.**

Le butin est parti en voiture, donc l'un au moins des coupables savait conduire. Comme $B$ ne
sait pas conduire, il est impossible que $B$ soit le seul coupable.

Le vol a bien eu lieu, donc il y a au moins un coupable parmi $A$, $B$ et $C$. Deux cas.

- **$C$ est coupable.** Le fait 2 dit alors que $A$ est son complice, donc $A$ est coupable.
- **$C$ est innocent.** Les coupables sont alors à chercher parmi $A$ et $B$ seulement. Il y en a
  au moins un. Si ce n'était que $B$, personne n'aurait pu conduire la voiture. Donc $A$ est
  coupable.

Dans les deux cas, $A$ est coupable.

**Deuxième dossier : $B$ est coupable.**

Raisonnons par l'absurde et supposons $B$ innocent.

D'après le fait 4, au moins un des trois est coupable, donc $A$ ou $C$ l'est.

- **Si $A$ est coupable.** Alors $A$ est coupable et $B$ est innocent, donc le fait 1 entraîne que
  $C$ est coupable. Mais alors $A$ et $C$ sont coupables tous les deux, c'est-à-dire qu'ils ont
  travaillé ensemble, ce que le fait 3 interdit. Contradiction.
- **Si $A$ est innocent.** Alors le coupable ne peut être que $C$. Mais $B$ est innocent par
  hypothèse et $A$ aussi dans ce cas : $C$ serait donc seul, ce que le fait 2 interdit.
  Contradiction.

Les deux cas sont impossibles. L'hypothèse était donc fausse : **$B$ est coupable**.

**Pourquoi on ne peut pas en dire plus.**

Craig a raison : au-delà de $B$, rien n'est déterminé. Il suffit de vérifier que trois
répartitions différentes satisfont les quatre faits.

| $A$ | $B$ | $C$ | fait 1 | fait 2 | fait 3 | fait 4 |
|---|---|---|---|---|---|---|
| innocent | coupable | innocent | vrai, car $A$ innocent | vrai, car $C$ innocent | vrai | vrai |
| coupable | coupable | innocent | vrai, car $B$ coupable | vrai, car $C$ innocent | vrai | vrai |
| innocent | coupable | coupable | vrai, car $A$ innocent | vrai, $B$ est complice | vrai, car $A$ innocent | vrai |

Dans la première ligne $A$ est innocent, dans la deuxième il est coupable : les faits ne
permettent donc pas de trancher sur $A$. Entre la première et la troisième ligne, ils ne
permettent pas non plus de trancher sur $C$. En revanche $B$ est coupable dans les trois, et on
vient de démontrer qu'il l'est toujours.

**Conclusion.** Dans le premier dossier, $A$ est coupable. Dans le second, $B$ est coupable, et
c'est tout ce que les faits permettent d'affirmer.

## Going further

Le fait 1 du second dossier, « si $A$ est coupable et $B$ innocent, alors $C$ est coupable », est
une implication. Elle est **vraie** dès que son hypothèse est fausse, c'est-à-dire dès que $A$ est
innocent ou que $B$ est coupable : elle n'interdit alors rien du tout. C'est pour cela qu'elle ne
sert que dans un seul des deux cas de la démonstration.

Reprends le second dossier en remplaçant le fait 1 par « $A$ est coupable ou $B$ est coupable ».
Que peut-on encore affirmer ?
