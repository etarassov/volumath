---
id: "7660"
title: "Colorier les six faces d'un cube"
grade: 11
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [denombrement, symetrie, rotation, cube]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, cours de combinatoire du groupe A"
  reference: "stage_ete_2013.pdf, chapitre II, groupe A, cours de dénombrement, exercice sur les coloriages d'un cube. Le corrigé imprimé annonce 32 ; la bonne réponse est 30 (voir la solution)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

On dispose de six couleurs et on peint chacune des six faces d'un cube d'une couleur différente : chaque couleur est utilisée exactement une fois.

Deux coloriages sont considérés comme **identiques** si l'on peut passer de l'un à l'autre en faisant tourner le cube dans l'espace.

Combien y a-t-il de coloriages différents ?

## Hints

1. Commencez par compter les coloriages **sans** tenir compte des rotations. C'est un simple arrangement des six couleurs sur six faces.
2. Chaque coloriage vraiment différent a été compté plusieurs fois : autant de fois qu'il y a de rotations du cube. Combien y en a-t-il ?
3. Pour compter les rotations : choisissez quelle face vient sur le dessus, puis de combien de quarts de tour on la fait pivoter.
4. Attention, cette division n'est légitime que si aucun coloriage n'est invariant par une rotation autre que l'identité. Pourquoi est-ce le cas ici ?

## Solution

**Étape 1 : compter les coloriages du cube fixé.**

Fixons le cube, posé sur la table, et nommons ses six faces : dessus, dessous, devant, derrière, gauche, droite.

Peindre chaque face d'une couleur différente revient à ranger les six couleurs sur les six faces, donc à choisir un ordre des six couleurs. Il y a

$$6! = 720$$

façons de le faire.

**Étape 2 : compter les rotations du cube.**

Une rotation qui ramène le cube sur lui-même est entièrement déterminée par deux choix :

- **quelle face se retrouve sur le dessus** : $6$ possibilités ;
- une fois cette face placée en haut, **de quel angle on fait pivoter le cube autour de l'axe vertical** : $4$ possibilités (zéro, un, deux ou trois quarts de tour).

Ces choix sont indépendants et déterminent la rotation sans ambiguïté. Il y a donc

$$6 \times 4 = 24$$

rotations du cube.

**Étape 3 : chaque coloriage est compté exactement 24 fois.**

Partons d'un coloriage peint sur un vrai cube. Les $24$ rotations en donnent $24$ descriptions dans le repère « dessus / dessous / devant / ... ».

Ces $24$ descriptions sont-elles toutes différentes ? Oui. Supposons qu'une rotation $r$ laisse le coloriage inchangé, c'est-à-dire que chaque face garde sa couleur. Comme les six couleurs sont **toutes différentes**, une face ne peut pas prendre la place d'une autre face : $r$ envoie chaque face sur elle-même. La seule rotation du cube qui fixe les six faces est l'identité.

Donc deux rotations distinctes donnent deux descriptions distinctes, et chaque coloriage « réel » apparaît exactement $24$ fois dans les $720$ descriptions.

**Étape 4 : conclure.**

Le nombre de coloriages différents est donc

$$\frac{720}{24} = \boxed{30} .$$

> **Attention, le corrigé de la source annonce $32$.** C'est une erreur : la division de $720$ par $24$ donne bien $30$. La valeur $32$ ne correspond à aucun comptage du problème.

## Going further

**Pourquoi le troisième point de la démonstration est indispensable.** Diviser le nombre total par le nombre de rotations n'est correct que si chaque objet est compté le même nombre de fois. Cela tombe en défaut dès que des couleurs se répètent.

Comptons par exemple les coloriages d'un cube avec **deux couleurs seulement**, chaque face recevant l'une ou l'autre : il y a $2^6 = 64$ coloriages du cube fixé, mais $64 \div 24$ n'est même pas un entier. La bonne réponse est $10$, et elle s'obtient avec un outil plus fin, la **formule de Burnside**, qui compte pour chaque rotation le nombre de coloriages qu'elle laisse inchangés, puis en prend la moyenne.

**Deux questions pour prolonger.**

1. Si l'on s'autorise aussi les symétries (le reflet dans un miroir), combien reste-t-il de coloriages ? Le groupe passe à $48$ éléments, et la réponse devient $720 / 48 = 15$.
2. Mêmes questions pour un tétraèdre régulier dont les quatre faces reçoivent quatre couleurs différentes : il y a $4! = 24$ coloriages et $12$ rotations, donc $2$ coloriages distincts. Ces deux-là sont images l'un de l'autre dans un miroir, ce qui explique pourquoi un tétraèdre colorié peut être « droitier » ou « gaucher ».
