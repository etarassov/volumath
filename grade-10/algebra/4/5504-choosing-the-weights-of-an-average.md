---
id: "5504"
title: "Choisir les coefficients d'une moyenne"
grade: 10
theme: algebra
difficulty: 4
duration_min: 50
tags: [moyenne, coefficients, optimisation, inegalite, modelisation]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Grade Optimization, Kenneth Levasseur (d'après Benjamin Grimmer)"
  reference: "grade_optimization-1.pdf, Checkpoint 1.1 et Checkpoint 2.2. Les contraintes chiffrées, laissées libres dans la source, ont été fixées ici pour rendre le problème fermé."
  url: "https://mathcircles.org/activity/grade-optimization/"
  original_language: "en"
  local_copy: "sources/originals/namc/grade_optimization-1.pdf"
---

## Statement

Dans un cours, chaque élève reçoit trois notes sur $100$ : une note de devoirs à la maison, une note de contrôle, une note d'examen final. Le professeur calcule ensuite une moyenne en choisissant trois coefficients $c$, $e$ et $d$, positifs, dont la somme vaut $1$ :

$$\text{moyenne} = c \times (\text{note de contrôle}) + e \times (\text{note d'examen}) + d \times (\text{note de devoirs}) .$$

Voici les notes de quatre élèves.

| élève | devoirs | contrôle | examen |
|---|---|---|---|
| Damien | $80$ | $75$ | $83$ |
| Anna | $90$ | $91$ | $58$ |
| Julien | $60$ | $80$ | $86$ |
| Léa | $85$ | $70$ | $74$ |

**a)** Le professeur avait d'abord prévu $c = \text{0,3}$, $e = \text{0,5}$ et $d = \text{0,2}$. Calculer les quatre moyennes.

**b)** Une collègue propose plutôt $c = \text{0,3}$, $e = \text{0,6}$ et $d = \text{0,1}$. Qui y gagne ? Qui y perd ?

**c)** Montrer que la moyenne de chaque élève peut s'écrire sous la forme
$$D + \alpha\, c + \beta\, e ,$$
où $D$ est sa note de devoirs. Donner $\alpha$ et $\beta$ pour les quatre élèves, et dire ce que ces deux nombres signifient.

**d)** Le conseil des professeurs décide que tout choix vérifiant
$$c \geqslant \text{0,2}, \qquad e \geqslant \text{0,4}, \qquad d \geqslant \text{0,1}$$
est acceptable. Représenter l'ensemble $R$ de ces choix dans un repère où $c$ est en abscisse et $e$ en ordonnée.

**e)** Pour chacun des quatre élèves, trouver le choix acceptable qui rend **sa** moyenne la plus grande possible, et calculer cette moyenne.

**f)** Que conclure ?

## Hints

1. Question c) : les trois coefficients ne sont pas indépendants, puisque $c + e + d = 1$. Remplace $d$ par $1 - c - e$ et développe.
2. Tu obtiens un nombre fixe, la note de devoirs, corrigé par deux termes. Le coefficient de $c$ mesure de combien le contrôle est meilleur que les devoirs.
3. Question d) : la condition $d \geqslant \text{0,1}$ se traduit par une inégalité entre $c$ et $e$ seulement. Laquelle ? Tu obtiens un triangle.
4. Question e) : pas besoin de tout essayer. Pour Léa, les deux coefficients $\alpha$ et $\beta$ sont négatifs : que faut-il prendre pour $c$ et pour $e$ ?
5. Pour Damien, le coefficient de $e$ est positif et celui de $c$ négatif : il faudrait un grand $e$ et un petit $c$. Mais $e$ est limité par $c$, puisque $c + e \leqslant \text{0,9}$. Majore $e$ par $\text{0,9} - c$ et regarde ce qu'il reste.
6. Les quatre maximums tombent sur des sommets du triangle. Ce n'est pas un hasard.

## Solution

**a) Avec les coefficients prévus.**

$$\text{Damien} : \text{0,3} \times 75 + \text{0,5} \times 83 + \text{0,2} \times 80 = \text{22,5} + \text{41,5} + 16 = 80 .$$
$$\text{Anna} : \text{0,3} \times 91 + \text{0,5} \times 58 + \text{0,2} \times 90 = \text{27,3} + 29 + 18 = \text{74,3} .$$
$$\text{Julien} : \text{0,3} \times 80 + \text{0,5} \times 86 + \text{0,2} \times 60 = 24 + 43 + 12 = 79 .$$
$$\text{Léa} : \text{0,3} \times 70 + \text{0,5} \times 74 + \text{0,2} \times 85 = 21 + 37 + 17 = 75 .$$

**b) La proposition de la collègue.**

Avec $c = \text{0,3}$, $e = \text{0,6}$, $d = \text{0,1}$ on trouve Damien $\text{80,3}$, Anna $\text{71,1}$, Julien $\text{81,6}$, Léa $\text{73,9}$.

Damien gagne $\text{0,3}$ point et Julien $\text{2,6}$ points ; Anna perd $\text{3,2}$ points et Léa $\text{1,1}$ point. Donner plus de poids à l'examen favorise ceux qui ont bien réussi l'examen, ce qui n'est pas une surprise, mais on voit que le changement n'est pas anodin : Anna perd plus de trois points.

**c) La forme réduite.**

Comme $c + e + d = 1$, on a $d = 1 - c - e$. En notant $C$, $E$, $D$ les trois notes d'un élève :

$$\text{moyenne} = cC + eE + (1 - c - e)D = D + (C - D)\,c + (E - D)\,e .$$

Donc $\alpha = C - D$ et $\beta = E - D$ : **$\alpha$ dit de combien le contrôle est meilleur que les devoirs, et $\beta$ de combien l'examen est meilleur que les devoirs.** Augmenter le poids du contrôle ne sert que si le contrôle bat les devoirs.

| élève | moyenne |
|---|---|
| Damien | $80 - 5c + 3e$ |
| Anna | $90 + c - 32e$ |
| Julien | $60 + 20c + 26e$ |
| Léa | $85 - 15c - 11e$ |

(Vérification pour Damien avec $c = \text{0,3}$ et $e = \text{0,5}$ : $80 - \text{1,5} + \text{1,5} = 80$, ce qui redonne bien la question a.)

**d) L'ensemble des choix acceptables.**

Les deux premières conditions s'écrivent directement $c \geqslant \text{0,2}$ et $e \geqslant \text{0,4}$. La troisième devient
$$d = 1 - c - e \geqslant \text{0,1} \quad \Longleftrightarrow \quad c + e \leqslant \text{0,9} .$$

L'ensemble $R$ est donc le triangle plein délimité par la droite verticale $c = \text{0,2}$, la droite horizontale $e = \text{0,4}$ et la droite $c + e = \text{0,9}$. Ses trois sommets sont

$$S_1 (\text{0,2}\,;\,\text{0,4}), \qquad S_2 (\text{0,5}\,;\,\text{0,4}), \qquad S_3 (\text{0,2}\,;\,\text{0,7}) .$$

Ils correspondent aux triplets $(c\,;\,e\,;\,d)$ égaux à $(\text{0,2}\,;\,\text{0,4}\,;\,\text{0,4})$, $(\text{0,5}\,;\,\text{0,4}\,;\,\text{0,1})$ et $(\text{0,2}\,;\,\text{0,7}\,;\,\text{0,1})$.

**e) Le meilleur choix pour chacun.**

*Léa : $85 - 15c - 11e$.* Les deux coefficients sont négatifs, donc il faut $c$ et $e$ les plus petits possibles :
$$85 - 15c - 11e \leqslant 85 - 15 \times \text{0,2} - 11 \times \text{0,4} = 85 - 3 - \text{4,4} = \text{77,6} .$$
Le maximum $\text{77,6}$ est atteint au sommet $S_1$, c'est-à-dire pour $(\text{0,2}\,;\,\text{0,4}\,;\,\text{0,4})$. C'est logique : Léa est meilleure en devoirs, elle a intérêt à ce que les devoirs pèsent le plus lourd possible.

*Damien : $80 - 5c + 3e$.* On aimerait $e$ grand et $c$ petit, mais les deux sont liés. Comme $e \leqslant \text{0,9} - c$ :
$$80 - 5c + 3e \leqslant 80 - 5c + 3(\text{0,9} - c) = \text{82,7} - 8c \leqslant \text{82,7} - 8 \times \text{0,2} = \text{81,1} .$$
L'égalité demande $e = \text{0,9} - c$ et $c = \text{0,2}$, donc $e = \text{0,7}$ : le maximum $\text{81,1}$ est atteint au sommet $S_3$.

*Julien : $60 + 20c + 26e$.* On regroupe pour faire apparaître $c + e$, qui est majoré par $\text{0,9}$ :
$$60 + 20c + 26e = 60 + 20(c + e) + 6e \leqslant 60 + 20 \times \text{0,9} + 6 \times \text{0,7} = 60 + 18 + \text{4,2} = \text{82,2} ,$$
car $e \leqslant \text{0,9} - c \leqslant \text{0,7}$. L'égalité demande $c + e = \text{0,9}$ et $e = \text{0,7}$, donc $c = \text{0,2}$ : le maximum $\text{82,2}$ est atteint lui aussi au sommet $S_3$.

*Anna : $90 + c - 32e$.* Ici $e$ doit être le plus petit possible et $c$ le plus grand possible. Comme $c \leqslant \text{0,9} - e$ :
$$90 + c - 32e \leqslant 90 + (\text{0,9} - e) - 32e = \text{90,9} - 33e \leqslant \text{90,9} - 33 \times \text{0,4} = \text{90,9} - \text{13,2} = \text{77,7} .$$
L'égalité demande $c = \text{0,9} - e$ et $e = \text{0,4}$, donc $c = \text{0,5}$ : le maximum $\text{77,7}$ est atteint au sommet $S_2$.

| élève | meilleur choix $(c\,;\,e\,;\,d)$ | meilleure moyenne | moyenne initiale |
|---|---|---|---|
| Damien | $(\text{0,2}\,;\,\text{0,7}\,;\,\text{0,1})$ | $\text{81,1}$ | $80$ |
| Anna | $(\text{0,5}\,;\,\text{0,4}\,;\,\text{0,1})$ | $\text{77,7}$ | $\text{74,3}$ |
| Julien | $(\text{0,2}\,;\,\text{0,7}\,;\,\text{0,1})$ | $\text{82,2}$ | $79$ |
| Léa | $(\text{0,2}\,;\,\text{0,4}\,;\,\text{0,4})$ | $\text{77,6}$ | $75$ |

**f) Conclusion.**

Chacun des trois sommets du triangle est le meilleur choix pour au moins un élève. **Il n'existe donc aucun jeu de coefficients qui soit le meilleur pour tout le monde** : tout choix raisonnable avantage certains élèves et en désavantage d'autres, et l'écart atteint ici plus de trois points.

On remarque aussi que les quatre maximums tombent sur des sommets. Ce n'est pas un hasard : un point quelconque du triangle est une moyenne pondérée des trois sommets, et une expression de la forme $D + \alpha c + \beta e$ transforme une moyenne pondérée de points en la moyenne pondérée correspondante des valeurs. Cette valeur ne peut donc pas dépasser la plus grande des trois valeurs aux sommets. **Pour chercher le maximum, il suffit de regarder les sommets.**

## Going further

1. Pour chaque élève, cherche maintenant le choix acceptable qui rend sa moyenne la plus **petite** possible. Quel est l'écart entre le meilleur et le pire pour chacun ? Qui est le plus sensible au choix des coefficients ?
2. Si le conseil ajoutait la condition « le poids de l'examen ne doit pas dépasser une fois et demie le poids du contrôle », quelle inégalité faudrait-il ajouter, et que deviendrait le triangle ?
3. Avec quatre composantes au lieu de trois, l'ensemble des choix acceptables ne serait plus un polygone du plan. Que serait-il ?
