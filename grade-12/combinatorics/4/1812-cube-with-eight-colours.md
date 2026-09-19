---
id: "1812"
title: "Le cube aux huit couleurs"
grade: 12
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [denombrement, symetries, rotations, cube, factorielle]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Combinations and Pascal's Triangle"
  reference: "Handout-1770-1631.pdf, nouveaux problèmes, exercice 1"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1770-1631.pdf"
---

## Statement

Un fabricant de jouets propose un cube en fil de fer portant une petite boule colorée à chacun de ses huit sommets. Il dispose de huit couleurs, et chaque cube doit porter **les huit couleurs, une par sommet**.

Deux cubes sont considérés comme identiques si l'on peut amener l'un sur l'autre en le faisant tourner dans l'espace. (On ne le retourne pas comme un gant : seules les rotations sont permises, ce qui est le cas pour un objet réel.)

Combien de cubes différents le fabricant peut-il produire ?

## Hints

1. Commence par un décompte plus facile : de combien de façons peut-on attribuer les huit couleurs aux huit sommets si l'on considère le cube comme **fixé**, posé sur la table sans le bouger ?
2. Chaque jouet réel est donc compté plusieurs fois dans ce décompte. Il faut savoir combien de fois.
3. Compte les rotations qui amènent le cube sur lui-même. Astuce : choisis d'abord quelle face se retrouve en bas, puis fais tourner autour de l'axe vertical.
4. Il reste le point délicat : es-tu sûr que deux rotations différentes appliquées au même coloriage donnent toujours deux coloriages différents ?
5. C'est ici que sert le fait que les huit couleurs sont **toutes différentes**. Si une rotation laissait le coloriage inchangé, que pourrait-on dire de chaque sommet ?

## Solution

**Étape 1 : les coloriages d'un cube posé et immobile.**

Fixons le cube, posé sur la table. Attribuer les huit couleurs à ses huit sommets, une couleur par sommet, revient à ranger huit objets distincts à huit places distinctes. Il y a donc

$$8! = 40\,320$$

façons de le faire.

**Étape 2 : les rotations du cube.**

Comptons les rotations de l'espace qui amènent le cube exactement sur lui-même.

Une telle rotation envoie la face du bas sur l'une des six faces : cela fait $6$ possibilités. Une fois choisie la face qui vient en bas, le cube peut encore tourner autour de l'axe vertical, d'un quart, d'un demi ou de trois quarts de tour, ou pas du tout : cela fait $4$ possibilités. Et ces deux choix déterminent complètement la rotation.

Il y a donc

$$6 \times 4 = 24 \ \text{rotations}.$$

**Étape 3 : chaque jouet est compté exactement $24$ fois.**

Prenons un coloriage $C$ des huit sommets. Les $24$ rotations en fabriquent $24$ (en comptant $C$ lui-même, obtenu par la rotation nulle). Tous ces coloriages donnent le **même jouet**.

Sont-ils tous différents les uns des autres ? Oui, et c'est le point clé. Supposons qu'une rotation $r$ transforme le coloriage $C$ en lui-même. Cela signifie que, pour chaque sommet $S$, la couleur portée par $r(S)$ est la même que celle portée par $S$. Or les huit couleurs sont **deux à deux distinctes** : deux sommets de même couleur sont forcément le même sommet. Donc $r(S) = S$ pour tous les sommets, et une rotation qui fixe les huit sommets est la rotation nulle.

Conclusion : seule la rotation nulle laisse un coloriage inchangé. Si deux rotations $r$ et $r'$ donnaient le même coloriage à partir de $C$, alors la rotation « $r$ suivie de l'inverse de $r'$ » laisserait $C$ inchangé, donc serait la rotation nulle, donc $r = r'$.

Les $40\,320$ coloriages se répartissent donc en paquets de **exactement** $24$, un paquet par jouet.

**Étape 4 : le compte.**

$$\frac{8!}{24} = \frac{40\,320}{24} = 1680.$$

**Conclusion.** Le fabricant peut produire $\boxed{1680}$ cubes différents.

**Remarque : pourquoi l'hypothèse « les huit couleurs » est essentielle.** Si l'on autorisait des couleurs répétées, l'argument tomberait : un cube dont les huit sommets sont bleus est laissé inchangé par les $24$ rotations, et diviser par $24$ donnerait un résultat faux. Le décompte des coloriages avec répétitions demande un outil plus fin (la formule de Burnside).

## Going further

1. Reprends le problème si l'on s'autorise aussi les symétries, c'est-à-dire si l'on accepte de considérer comme identiques un cube et son image dans un miroir. Combien de jouets reste-t-il ?
2. Même question avec un tétraèdre régulier et quatre couleurs, puis avec un octaèdre régulier et six couleurs.
3. Vérifie le nombre $24$ d'une autre façon : une rotation envoie un sommet donné sur l'un des $8$ sommets, et il reste ensuite $3$ rotations possibles autour de la grande diagonale.
