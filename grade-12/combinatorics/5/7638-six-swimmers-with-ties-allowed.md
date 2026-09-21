---
id: "7638"
title: "Six nageurs, ex aequo autorisés"
grade: 12
theme: combinatorics
difficulty: 5
duration_min: 50
tags: [denombrement, recurrence, coefficients binomiaux, partitions ordonnees]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, La Muraille"
  reference: "stage_ete_2013.pdf, chapitre X « La Muraille », exercice 20 (sans solution imprimée)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Six amis — Alice, Bob, Céline, Damien, Élisabeth et Frédéric — participent à une course de natation en eau libre.

À l'arrivée, il peut y avoir des **ex aequo** : plusieurs nageurs peuvent finir exactement en même temps, et occupent alors la même place.

Combien y a-t-il de classements possibles ?

*Deux classements sont différents dès que l'ordre d'arrivée diffère, ou dès que les groupes d'ex aequo ne sont pas les mêmes. Par exemple, avec deux nageurs $A$ et $B$, il y a trois classements : « $A$ devant $B$ », « $B$ devant $A$ », et « $A$ et $B$ ex aequo ».*

## Hints

1. Commencez petit : combien de classements avec $1$ nageur ? avec $2$ ? avec $3$ ? Vous devriez trouver $1$, $3$ et $13$.
2. Pour compter les classements de $n$ nageurs, regardez le **groupe de tête** : celui des nageurs arrivés premiers ex aequo.
3. Si le groupe de tête compte $j$ nageurs, de combien de façons peut-on le choisir ? Et que reste-t-il à faire ensuite ?
4. Cela donne une formule de récurrence. Notez $u_n$ le nombre cherché et posez $u_0 = 1$.
5. Attention à ne pas oublier de faire varier $j$ de $1$ jusqu'à $n$.

## Solution

**Réponse : $4\,683$ classements.**

Notons $u_n$ le nombre de classements possibles pour $n$ nageurs. Par convention $u_0 = 1$ : avec zéro nageur, il y a exactement une façon de ne rien classer, à savoir le classement vide.

**La relation de récurrence.**

Soit $n \geqslant 1$. Dans un classement, regardons le **groupe de tête** : l'ensemble des nageurs arrivés à la première place, ex aequo entre eux. Ce groupe n'est jamais vide.

Notons $j$ le nombre de nageurs de ce groupe, avec $1 \leqslant j \leqslant n$. Pour construire un classement, il suffit et il faut :

- choisir quels $j$ nageurs forment le groupe de tête : il y a $\binom{n}{j}$ façons de le faire ;
- classer, entre eux, les $n - j$ nageurs restants : il y a $u_{n-j}$ façons de le faire.

Ces deux choix sont indépendants, et deux choix différents donnent deux classements différents. En additionnant sur toutes les tailles possibles du groupe de tête :

$$u_n = \sum_{j=1}^{n} \binom{n}{j} \, u_{n-j} .$$

**Le calcul.**

- $u_0 = 1$.
- $u_1 = \binom{1}{1} u_0 = 1$.
- $u_2 = \binom{2}{1} u_1 + \binom{2}{2} u_0 = 2 \times 1 + 1 \times 1 = 3$.
- $u_3 = \binom{3}{1} u_2 + \binom{3}{2} u_1 + \binom{3}{3} u_0 = 3 \times 3 + 3 \times 1 + 1 \times 1 = 13$.
- $u_4 = 4 \times 13 + 6 \times 3 + 4 \times 1 + 1 \times 1 = 52 + 18 + 4 + 1 = 75$.
- $u_5 = 5 \times 75 + 10 \times 13 + 10 \times 3 + 5 \times 1 + 1 \times 1 = 375 + 130 + 30 + 5 + 1 = 541$.
- $u_6 = 6 \times 541 + 15 \times 75 + 20 \times 13 + 15 \times 3 + 6 \times 1 + 1 \times 1$

$$u_6 = 3246 + 1125 + 260 + 45 + 6 + 1 = 4\,683 .$$

**Conclusion.** Il y a $\boxed{4\,683}$ classements possibles pour les six nageurs.

## Going further

**Un contrôle de bon sens.** Sans ex aequo, il y aurait $6! = 720$ classements. Avec ex aequo autorisés, on en trouve $4\,683$, donc environ $\text{6,5}$ fois plus : c'est raisonnable, car les ex aequo ouvrent beaucoup de possibilités mais les regroupements diminuent le nombre de places.

**Le plus petit classement possible** est celui où tout le monde est ex aequo ; le plus étalé est celui où tout le monde est séparé.

Ces nombres $1, 1, 3, 13, 75, 541, 4683, \ldots$ s'appellent les **nombres de Fubini**, ou nombres ordonnés de Bell. Ils comptent aussi le nombre de façons de partager un ensemble de $n$ éléments en une suite ordonnée de paquets non vides.

**Une seconde méthode.** On peut aussi compter en fixant d'abord le nombre $m$ de places distinctes du classement. Il faut alors partager les $6$ nageurs en $m$ paquets non vides, puis ordonner ces paquets ($m!$ façons). Cela donne

$$u_6 = \sum_{m=1}^{6} m! \, S(6, m) = 1 \times 1 + 2 \times 31 + 6 \times 90 + 24 \times 65 + 120 \times 15 + 720 \times 1 ,$$

où $S(6,m)$ est le nombre de partages de $6$ objets en $m$ paquets non vides (les nombres de Stirling de seconde espèce). On retrouve $1 + 62 + 540 + 1560 + 1800 + 720 = 4\,683$.
