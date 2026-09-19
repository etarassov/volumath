---
id: "0258"
title: "Un rectangle de périmètre divisible par 4"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 20
tags: [raisonnement-par-labsurde, parite, aire, perimetre, decoupage]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок 8–9 класс, первое полугодие (Е. А. Асташов, Д. А. Удимов)"
  reference: "AU.pdf, листок 1, задача 10"
  url: "https://mmmf.msu.ru/for_schools/AU.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU.pdf"
---

## Statement

Un carré quadrillé $2013 \times 2013$ est découpé en plusieurs rectangles, les coupes
suivant toujours les lignes du quadrillage.

Montrer que l'un au moins de ces rectangles a un périmètre divisible par 4.

## Hints

1. Un rectangle du découpage a des côtés entiers, disons $m$ et $n$ carreaux. Écris son périmètre en fonction de $m$ et $n$.
2. Le périmètre vaut $2(m+n)$ : il est toujours pair. À quelle condition sur $m$ et $n$ est-il divisible par 4 ?
3. Il est divisible par 4 exactement quand $m+n$ est pair, c'est-à-dire quand $m$ et $n$ ont la même parité. Raisonne maintenant par l'absurde : suppose qu'aucun rectangle n'a un périmètre divisible par 4. Que peut-on dire des côtés de chaque rectangle ?
4. Chaque rectangle aurait alors un côté pair et un côté impair. Que peut-on dire de son aire ? Puis additionne les aires de tous les rectangles et compare à l'aire du carré.

## Solution

**L'idée : on raisonne par l'absurde, et l'outil est la parité — d'abord celle des côtés,
puis celle des aires.**

**Étape 1. Traduire « périmètre divisible par 4 ».**

Un rectangle du découpage a pour côtés un nombre entier de carreaux, disons $m$ et $n$. Son
périmètre vaut
$$P = 2(m+n) .$$

Ce périmètre est toujours pair. Il est divisible par 4 exactement lorsque $m+n$ est pair,
c'est-à-dire lorsque **$m$ et $n$ ont la même parité** (tous les deux pairs, ou tous les
deux impairs).

Autrement dit : un rectangle a un périmètre **non** divisible par 4 exactement lorsqu'il a
un côté pair et un côté impair.

**Étape 2. Raisonner par l'absurde.**

Supposons que le résultat soit faux : aucun rectangle du découpage n'a un périmètre
divisible par 4.

D'après l'étape 1, chaque rectangle du découpage a alors un côté pair et un côté impair.

**Étape 3. Regarder les aires.**

L'aire d'un rectangle de côtés $m$ et $n$ vaut $m \times n$ carreaux. Si l'un des deux
côtés est pair, ce produit est pair.

Donc, sous notre supposition, **tous** les rectangles du découpage ont une aire paire.

Les rectangles pavent le carré sans trou ni recouvrement, donc la somme de leurs aires est
l'aire du carré :
$$\underbrace{\text{aire}_1 + \text{aire}_2 + \dots + \text{aire}_k}_{\text{que des nombres pairs}} = 2013 \times 2013 .$$

Une somme de nombres pairs est paire. Donc $2013 \times 2013$ devrait être pair.

**Étape 4. La contradiction.**

Or $2013$ est impair, et le produit de deux nombres impairs est impair : $2013 \times 2013$
est impair. (On peut aussi le voir sur le chiffre des unités : $3 \times 3 = 9$.)

On aboutit donc à une contradiction : notre supposition était fausse.

**Conclusion.** Dans tout découpage du carré $2013 \times 2013$ en rectangles suivant les
lignes du quadrillage, il existe au moins un rectangle dont le périmètre est divisible par 4.

**Remarque.** Le seul fait utilisé sur 2013 est qu'il est impair. La démonstration marche
donc à l'identique pour tout carré $n \times n$ avec $n$ impair.

## Going further

1. L'énoncé reste-t-il vrai pour un carré $2014 \times 2014$ ? Cherche un découpage où aucun
   rectangle n'a un périmètre divisible par 4.
2. Affine le résultat : montre que le nombre de rectangles dont les deux côtés sont impairs
   est toujours impair. En particulier, il y en a au moins un.
3. Dans un découpage du carré $2013 \times 2013$, peut-il n'y avoir qu'un seul rectangle de
   périmètre divisible par 4 ?
