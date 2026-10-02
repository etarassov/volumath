---
id: "5406"
title: "Les quatre sortes de SET"
grade: 12
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [set, denombrement, classement, triplets, cartes]
adapted_from: null
see_also: ["5404"]
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), The Game of SET, Brian Conrey et Brianna Donaldson"
  reference: "Set-Activity-Guide.pdf, questions 6 et 7"
  url: "https://mathcircles.org/activity/set/"
  original_language: "en"
  local_copy: "sources/originals/namc/Set-Activity-Guide.pdf"
---

## Statement

Le jeu de **SET** contient $81$ cartes. Chaque carte porte un dessin décrit par quatre caractéristiques, qui prennent chacune trois valeurs : le **nombre** de figures ($1$, $2$ ou $3$), la **forme** (losange, ovale, vague), la **couleur** (rouge, verte, violette) et le **remplissage** (vide, hachuré, plein). Le paquet contient une carte par combinaison, soit $3^4 = 81$ cartes.

Trois cartes forment un **SET** lorsque, pour chacune des quatre caractéristiques, ou bien les trois cartes ont la même valeur, ou bien elles ont trois valeurs toutes différentes.

Les joueurs expérimentés le disent tous : certains SET sautent aux yeux, d'autres se cachent. Classons-les. Pour un SET donné, notons $k$ le nombre de caractéristiques pour lesquelles les trois cartes ont la **même** valeur ; les $4 - k$ autres caractéristiques prennent donc trois valeurs différentes.

1. Montrer que $k$ ne peut pas valoir $4$.
2. Pour $k = 0, 1, 2, 3$, compter les SET correspondants.
3. Vérifier que le total est bien le nombre total de SET du jeu, qui vaut $1080$.

## Hints

1. Question 1 : si les quatre caractéristiques étaient les mêmes pour les trois cartes, que seraient ces cartes ?
2. Question 2 : commencez par choisir **quelles** caractéristiques sont celles où les trois cartes se ressemblent.
3. Il est plus simple de compter les triplets **ordonnés** $(A, B, C)$, puis de corriger à la fin.
4. Pour une caractéristique où les trois cartes se ressemblent, combien y a-t-il de choix ? Et pour une caractéristique où les trois valeurs sont différentes, combien y a-t-il de façons de les répartir entre $A$, $B$ et $C$ ?
5. Chaque SET est compté combien de fois quand on compte les triplets ordonnés ?

## Solution

### 1. Pourquoi $k = 4$ est impossible

Si les trois cartes avaient la même valeur pour les quatre caractéristiques, elles seraient identiques. Or le paquet ne contient pas de carte en double, et un SET est fait de trois cartes différentes. Donc $k \le 3$.

### 2. Le compte, sorte par sorte

Fixons $k$. Pour décrire un SET de cette sorte, il faut :

**a) choisir les caractéristiques où les trois cartes se ressemblent** : elles forment une partie de $k$ éléments parmi les $4$ caractéristiques, soit $\binom{4}{k}$ choix ;

**b) remplir chaque caractéristique.** Comptons ici les triplets **ordonnés** $(A, B, C)$ de cartes, c'est plus commode :

- pour une caractéristique de ressemblance, les trois cartes portent la même valeur, et il y a $3$ valeurs possibles : $3$ choix ;
- pour une caractéristique de différence, les trois cartes portent les trois valeurs, et il faut décider laquelle va à $A$, laquelle à $B$, laquelle à $C$ : c'est une façon d'ordonner trois objets, soit $3! = 6$ choix.

Il y a $k$ caractéristiques du premier type et $4-k$ du second, d'où un nombre de triplets ordonnés égal à

$$\binom{4}{k} \times 3^{k} \times 6^{\,4-k} .$$

**c) revenir aux triplets non ordonnés.** Les trois cartes d'un SET sont différentes deux à deux (dès que $k \le 3$, il existe une caractéristique où elles prennent trois valeurs différentes). Chaque SET est donc compté $3! = 6$ fois dans le calcul précédent, une fois par ordre possible. Le nombre $N_k$ de SET de la sorte $k$ vaut

$$N_k = \frac{1}{6} \binom{4}{k} \times 3^{k} \times 6^{\,4-k} = \binom{4}{k} \times 3^{k} \times 6^{\,3-k} .$$

Il ne reste qu'à calculer :

| $k$ | $\binom{4}{k}$ | $3^k$ | $6^{3-k}$ | $N_k$ | part |
|---|---|---|---|---|---|
| $3$ | $4$ | $27$ | $1$ | $108$ | $10\ \%$ |
| $2$ | $6$ | $9$ | $6$ | $324$ | $30\ \%$ |
| $1$ | $4$ | $3$ | $36$ | $432$ | $40\ \%$ |
| $0$ | $1$ | $1$ | $216$ | $216$ | $20\ \%$ |

### 3. Vérification

$$108 + 324 + 432 + 216 = 1080 .$$

C'est bien le nombre total de SET du jeu : chaque SET appartient à une sorte et une seule, donc les quatre nombres doivent se rejoindre sur le total.

**Conclusion.** Les SET les plus faciles à repérer, ceux où trois caractéristiques sont identiques (par exemple « une vague rouge vide, deux vagues rouges vides, trois vagues rouges vides »), ne sont que $108$, soit un SET sur dix. Les plus difficiles, ceux où **tout** change d'une carte à l'autre, sont deux fois plus nombreux : $216$, soit un SET sur cinq. Et la sorte la plus fréquente est celle où une seule caractéristique reste constante.

## Going further

1. Un SET dont les trois cartes ont la même couleur, c'est un SET dont la caractéristique « couleur » est une caractéristique de ressemblance. Combien y en a-t-il ? (Comptez-les directement, puis retrouvez le résultat à partir du tableau.)
2. Pourquoi les SET « tout différent » sont-ils si difficiles à voir, alors qu'ils sont deux fois plus nombreux que les plus faciles ?
