---
id: "5403"
title: "Le jeu de SET et la carte qui complète"
grade: 8
theme: combinatorics
difficulty: 2
duration_min: 25
tags: [set, denombrement, cartes, cas, unicite]
adapted_from: null
see_also: ["5404", "5407"]
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), The Game of SET, Brian Conrey et Brianna Donaldson"
  reference: "Set-Activity-Guide.pdf, questions 1 et 3"
  url: "https://mathcircles.org/activity/set/"
  original_language: "en"
  local_copy: "sources/originals/namc/Set-Activity-Guide.pdf"
---

## Statement

Le jeu de **SET** se joue avec un paquet de cartes très particulier. Chaque carte porte un dessin décrit par quatre caractéristiques :

- le **nombre** de figures dessinées : $1$, $2$ ou $3$ ;
- la **forme** des figures : losange, ovale ou vague ;
- la **couleur** : rouge, verte ou violette ;
- le **remplissage** : vide, hachuré ou plein.

Sur une même carte, toutes les figures sont identiques. Le paquet contient exactement une carte pour chaque combinaison possible de ces quatre caractéristiques, et aucune carte en double.

Trois cartes forment un **SET** lorsque, **pour chacune des quatre caractéristiques**, ou bien les trois cartes ont la même valeur, ou bien elles ont trois valeurs toutes différentes.

1. Combien de cartes le paquet contient-il ?

2. Parmi ces deux triplets, lequel est un SET ?

   - **A** : « $1$ losange vert vide », « $2$ vagues rouges hachurées », « $3$ ovales violets pleins » ;
   - **B** : « $1$ losange rouge vide », « $2$ losanges rouges hachurés », « $3$ losanges verts pleins ».

3. On pose deux cartes différentes sur la table. Montrer qu'il existe **exactement une** carte du paquet qui forme un SET avec ces deux-là.

## Hints

1. Question 1 : une carte, c'est un choix de nombre, **puis** un choix de forme, **puis** un choix de couleur, **puis** un choix de remplissage.
2. Question 2 : vérifiez les quatre caractéristiques l'une après l'autre. Il suffit qu'une seule caractéristique ne convienne pas pour que le triplet ne soit pas un SET.
3. Question 3 : traitez les caractéristiques séparément. Pour la couleur par exemple, il n'y a que deux situations : les deux cartes posées ont la même couleur, ou elles ont deux couleurs différentes.
4. Dans chacune de ces deux situations, quelle couleur la troisième carte est-elle obligée d'avoir ?
5. N'oubliez pas de vérifier que la carte obtenue n'est pas l'une des deux cartes déjà posées.

## Solution

### 1. Le nombre de cartes

Pour fabriquer une carte, il faut faire quatre choix successifs, indépendants les uns des autres :

- le nombre de figures : $3$ possibilités ;
- la forme : $3$ possibilités ;
- la couleur : $3$ possibilités ;
- le remplissage : $3$ possibilités.

Le paquet contient donc

$$3 \times 3 \times 3 \times 3 = 3^4 = 81 \ \text{cartes.}$$

### 2. Lequel est un SET ?

**Triplet A.** Vérifions les quatre caractéristiques :

- nombre : $1$, $2$, $3$ — trois valeurs différentes ;
- forme : losange, vague, ovale — trois valeurs différentes ;
- couleur : verte, rouge, violette — trois valeurs différentes ;
- remplissage : vide, hachuré, plein — trois valeurs différentes.

Chaque caractéristique convient : **A est un SET**.

**Triplet B.** Le nombre ($1$, $2$, $3$) convient, la forme (losange trois fois) convient, le remplissage (vide, hachuré, plein) convient. Mais la couleur donne rouge, rouge, verte : ni trois fois la même, ni trois différentes. **B n'est pas un SET.**

### 3. La troisième carte existe et elle est unique

Appelons $A$ et $B$ les deux cartes posées, et cherchons quelles cartes $T$ peuvent compléter le SET.

Raisonnons **caractéristique par caractéristique**, par exemple la couleur. Deux cas, et deux seulement :

- **$A$ et $B$ ont la même couleur.** Trois couleurs différentes est alors impossible, donc $T$ doit avoir cette même couleur : une seule possibilité.
- **$A$ et $B$ ont deux couleurs différentes.** Trois fois la même couleur est alors impossible, donc les trois couleurs doivent être différentes : $T$ doit porter la troisième couleur, celle qui manque. Une seule possibilité là encore.

Dans les deux cas, la couleur de $T$ est **imposée**. Le même raisonnement, mot pour mot, impose le nombre de figures, la forme et le remplissage de $T$.

Les quatre caractéristiques de $T$ étant imposées, il y a **au plus une** carte possible ; et comme le paquet contient une carte de chaque combinaison, cette carte existe bel et bien. Elle forme un SET avec $A$ et $B$, puisque les quatre caractéristiques ont été choisies pour cela.

**Une vérification à ne pas oublier.** Cette carte $T$ est-elle bien différente de $A$ et de $B$ ? Comme $A \ne B$, il y a au moins une caractéristique où $A$ et $B$ diffèrent. Pour celle-là, on est dans le deuxième cas : $T$ prend la valeur qui manque, donc une valeur différente de celle de $A$ et de celle de $B$. Ainsi $T \ne A$ et $T \ne B$.

**Conclusion.** Deux cartes quelconques du paquet se complètent en un SET d'une seule manière. C'est ce qui rend le jeu possible : quand un joueur croit voir un SET, il n'a besoin de vérifier qu'une chose, que la troisième carte est bien celle qu'imposent les deux premières.

## Going further

1. Combien y a-t-il de SET contenant une carte donnée ? (Pensez à compter d'abord les paires formées avec les $80$ autres cartes, puis à corriger : chaque SET a été compté plusieurs fois.)
2. On pose $12$ cartes sur la table. Combien de triplets faut-il examiner pour être sûr de ne pas rater un SET ?
