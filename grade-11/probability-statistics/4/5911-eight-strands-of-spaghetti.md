---
id: "5911"
title: "Huit spaghettis et une seule boucle"
grade: 11
theme: probability-statistics
difficulty: 4
duration_min: 40
tags: [probabilite, recurrence, probabilite-conditionnelle, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Probability (Elgin Johnston)"
  reference: "EJohnstonProbability.pdf, problème 2. La récurrence donnée dans les notes du document, P(n) = ((n-1)/n)·P(n-1), est fausse : elle conduirait à P(8) = 1/8. La bonne récurrence est P(n) = ((2n-2)/(2n-1))·P(n-1), qui donne 2048/6435."
  url: "https://mathcircles.org/activity/probability/"
  original_language: "en"
  local_copy: "sources/originals/namc/EJohnstonProbability.pdf"
---

## Statement

Dans une assiette se trouvent $8$ spaghettis cuits, emmêlés en un tas inextricable. On voit donc $16$ extrémités qui dépassent, mais on est absolument incapable de dire quelles sont les deux extrémités d'un même spaghetti.

On attrape deux extrémités au hasard et on les colle ensemble. Puis on attrape deux extrémités au hasard parmi celles qui restent, et on les colle. On recommence jusqu'à ce qu'il ne reste plus aucune extrémité libre.

À la fin, les spaghettis forment une ou plusieurs boucles fermées.

Quelle est la probabilité d'obtenir **une seule grande boucle** ?

## Hints

1. Commence tout petit : avec $1$ spaghetti, que se passe-t-il ? Avec $2$ spaghettis, quelle est la probabilité d'obtenir une seule boucle ?
2. Regarde seulement le **premier** collage. Deux choses peuvent arriver : soit on colle les deux extrémités d'un même spaghetti, soit on colle deux spaghettis différents.
3. Si on colle les deux extrémités d'un même spaghetti, on vient de fermer une petite boucle. Peut-elle encore se raccrocher au reste ?
4. Si on colle deux spaghettis différents, ils n'en forment plus qu'un, plus long. Combien reste-t-il de spaghettis ? En quoi la situation est-elle nouvelle ?
5. Note $p_n$ la probabilité de finir avec une seule boucle en partant de $n$ spaghettis. Écris une relation entre $p_n$ et $p_{n-1}$. Attention au nombre d'extrémités : il y en a $2n$, pas $n$.

## Solution

**Réponse : $\dfrac{2048}{6435} \approx \text{0,318}$, soit un peu moins d'une chance sur trois.**

### La bonne façon de regarder le premier collage

Notons $p_n$ la probabilité de finir avec une seule boucle en partant de $n$ spaghettis.

Partons de $n$ spaghettis, donc de $2n$ extrémités libres. Pour le premier collage, on peut imaginer qu'on attrape d'abord une extrémité, n'importe laquelle, puis une seconde au hasard parmi les $2n - 1$ restantes. Parmi ces $2n-1$ extrémités, **une seule** est l'autre bout du spaghetti déjà attrapé.

- Avec la probabilité $\dfrac{1}{2n-1}$, on colle un spaghetti sur lui-même. On ferme une petite boucle, qui n'a plus aucune extrémité libre : elle ne pourra plus jamais se raccrocher au reste. S'il reste au moins un autre spaghetti, il y aura donc au moins deux boucles à la fin : c'est perdu.
- Avec la probabilité $\dfrac{2n-2}{2n-1}$, on colle deux spaghettis différents. Ils n'en forment plus qu'un, plus long, avec deux extrémités libres. On se retrouve exactement dans la situation de départ, mais avec $n-1$ spaghettis.

D'où, pour $n \geq 2$ :
$$p_n = \frac{2n-2}{2n-1}\, p_{n-1}.$$

Et $p_1 = 1$ : un seul spaghetti, deux extrémités, on les colle, on obtient une boucle à coup sûr.

### Le calcul

$$p_8 = \frac{14}{15} \times \frac{12}{13} \times \frac{10}{11} \times \frac{8}{9} \times \frac{6}{7} \times \frac{4}{5} \times \frac{2}{3}.$$

Au numérateur : $14 \times 12 \times 10 \times 8 \times 6 \times 4 \times 2 = 645\,120$.

Au dénominateur : $15 \times 13 \times 11 \times 9 \times 7 \times 5 \times 3 = 2\,027\,025$.

En simplifiant par $315$ :
$$p_8 = \frac{645\,120}{2\,027\,025} = \frac{2048}{6435} \approx \text{0,3183}.$$

### Vérification sur les petits cas

- $p_1 = 1$.
- $p_2 = \dfrac{2}{3}$. Vérifions à la main : avec $2$ spaghettis il y a $4$ extrémités, donc $\binom{4}{2} = 6$ premiers collages possibles, tous de même probabilité. Deux d'entre eux referment un spaghetti sur lui-même, les quatre autres joignent les deux spaghettis. Dans ces quatre cas on obtient un long spaghetti, puis une boucle unique. La probabilité vaut bien $\tfrac{4}{6} = \tfrac{2}{3}$.
- $p_3 = \dfrac{4}{5} \times \dfrac{2}{3} = \dfrac{8}{15} \approx \text{0,53}$.

On voit que la probabilité décroît, mais lentement : même avec beaucoup de spaghettis, l'événement reste loin d'être rare.

## Going further

1. Montre que $p_n = \dfrac{2^{n-1}\,(n-1)!}{1 \times 3 \times 5 \times \cdots \times (2n-1)}$.
2. À partir de combien de spaghettis la probabilité passe-t-elle sous $\tfrac{1}{4}$ ? Sous $\tfrac{1}{10}$ ?
3. Même problème avec $6$ ficelles tendues entre deux points $A$ et $B$ : on noue d'abord les $6$ extrémités du côté $A$ deux par deux au hasard, puis les $6$ extrémités du côté $B$ deux par deux au hasard. Quelle est la probabilité que tout forme une seule grande boucle ? (Attention, ce n'est pas le même problème : les nœuds du côté $A$ sont faits avant ceux du côté $B$.)
4. Quel est le nombre **moyen** de boucles obtenues avec $n$ spaghettis ? (Indication : la probabilité de fermer une boucle au $k$-ième collage ne dépend pas de ce qui s'est passé avant.)
