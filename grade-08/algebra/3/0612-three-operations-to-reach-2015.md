---
id: "0612"
title: "Trois opérations pour arriver à 2015"
grade: 8
theme: algebra
difficulty: 3
duration_min: 30
tags: [calcul litteral, equations, cas a examiner]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Algèbre + Problèmes issus des stages Animath »"
  reference: "Algebre.pdf, exercice 69, Coupe Animath 2015, sélection"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Algebre.pdf"
---

## Statement

On dispose de trois opérations sur les entiers :

- l'opération $A$, qui consiste à multiplier par $2$ et à ajouter $4$ au résultat ;
- l'opération $B$, qui consiste à multiplier par $4$ et à ajouter $16$ au résultat ;
- l'opération $C$, qui consiste à multiplier par $5$ et à ajouter $25$ au résultat.

Déterminer :

a) un entier $x$ tel qu'en partant de $x$ et après avoir utilisé successivement les
opérations $A$, $B$ et $C$ dans cet ordre, on obtienne $1945$ ;

b) tous les entiers $x$ tels qu'en partant de $x$ et en utilisant successivement deux
opérations différentes, on obtienne $2015$.

## Hints

1. Écris chaque opération comme une formule : $A$ transforme $x$ en $2x + 4$. Et $B$ ? Et $C$ ?
2. Enchaîner deux opérations, c'est remplacer $x$ par la formule de la première dans la formule de la seconde. Tu obtiens à chaque fois quelque chose de la forme $mx + p$.
3. Pour la question b), l'ordre compte : $A$ puis $C$ ne donne pas la même chose que $C$ puis $A$. Combien de couples d'opérations différentes y a-t-il en tout ?
4. Il y en a six. Écris les six formules, résous les six équations, et garde seulement les solutions entières.

## Solution

Écrivons les trois opérations comme des formules :

$$A : x \mapsto 2x + 4, \qquad B : x \mapsto 4x + 16, \qquad C : x \mapsto 5x + 25.$$

**a) $A$, puis $B$, puis $C$.**

Après $A$, le nombre vaut $2x + 4$. Après $B$ :

$$4(2x+4) + 16 = 8x + 16 + 16 = 8x + 32.$$

Après $C$ :

$$5(8x + 32) + 25 = 40x + 160 + 25 = 40x + 185.$$

On veut $40x + 185 = 1945$, donc $40x = 1760$ et

$$x = 44.$$

**Vérification.** $A(44) = 92$, puis $B(92) = 4 \times 92 + 16 = 384$, puis
$C(384) = 5 \times 384 + 25 = 1945$.

**b) Deux opérations différentes, dans un ordre ou dans l'autre.**

Il y a six façons de choisir deux opérations différentes en tenant compte de l'ordre.
Calculons la formule de chacune, et résolvons l'équation « $= 2015$ ».

| enchaînement | formule | équation | solution |
|---|---|---|---|
| $A$ puis $B$ | $4(2x+4)+16 = 8x + 32$ | $8x = 1983$ | $1983$ est impair, pas de solution entière |
| $B$ puis $A$ | $2(4x+16)+4 = 8x + 36$ | $8x = 1979$ | impair, pas de solution entière |
| $A$ puis $C$ | $5(2x+4)+25 = 10x + 45$ | $10x = 1970$ | $x = 197$ |
| $C$ puis $A$ | $2(5x+25)+4 = 10x + 54$ | $10x = 1961$ | pas un multiple de $10$, aucune solution entière |
| $B$ puis $C$ | $5(4x+16)+25 = 20x + 105$ | $20x = 1910$ | $x = \text{95,5}$, pas un entier |
| $C$ puis $B$ | $4(5x+25)+16 = 20x + 116$ | $20x = 1899$ | pas un multiple de $20$, aucune solution entière |

Un seul cas fournit un entier.

**Réponse : $x = 197$**, en appliquant $A$ puis $C$.

**Vérification.** $A(197) = 2 \times 197 + 4 = 398$, puis
$C(398) = 5 \times 398 + 25 = 1990 + 25 = 2015$.
