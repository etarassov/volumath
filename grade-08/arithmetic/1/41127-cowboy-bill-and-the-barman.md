---
id: "41127"
title: "Le cow-boy Bill et le barman"
grade: 8
theme: arithmetic
difficulty: 1
duration_min: 10
tags: [divisibilite, criteres-de-divisibilite, prix, monnaie]
adapted_from: null
see_also: []
same_as: []
created: 2026-11-27
source:
  name: "MathCool, Грузия, август 2026 г., группа «Земляные элементали», листок «Делимость» (А. А. Пронина)"
  reference: "mathcool-2026-08-17-delimost.pdf, задача 7"
  url: ""
  original_language: "ru"
  local_copy: "sources/originals/mathcool/mathcool-2026-08-17-delimost.pdf"
---

## Statement

Le cow-boy Bill entre dans un saloon. Il demande au barman une bouteille de limonade à $3$ dollars et six boîtes d'allumettes imperméables, dont il ne connaît pas le prix. Le barman lui réclame $11$ dollars et $80$ cents (un dollar vaut $100$ cents). Bill sort alors son revolver. Le barman refait son calcul et corrige son erreur.

Comment Bill a-t-il compris que le barman essayait de le voler ?

## Hints

1. Compte tout en cents. Combien coûte la limonade ? Appelle $p$ le prix d'une boîte d'allumettes, en cents.
2. Le prix de la limonade et le prix des six boîtes sont-ils divisibles par un même nombre ?
3. Le nombre $1180$ est-il divisible par $3$ ?

## Solution

Comptons en cents, et appelons $p$ le prix d'une boîte d'allumettes : c'est un nombre entier de cents.

Le prix total est

$$300 + 6p = 3 \times 100 + 3 \times 2p = 3 \times (100 + 2p).$$

C'est un multiple de $3$, quel que soit le prix des allumettes.

Or le barman demande $1180$ cents. La somme des chiffres de $1180$ vaut $1 + 1 + 8 + 0 = 10$, qui n'est pas divisible par $3$, donc $1180$ n'est pas divisible par $3$.

**Conclusion : le total aurait dû être un multiple de $3$ cents, et $1180$ n'en est pas un. Bill n'a pas besoin de connaître le prix des allumettes pour voir que le compte est faux.**

## Going further

Le barman corrige et demande cette fois $11$ dollars et $70$ cents. Ce prix est-il possible ? Combien coûterait alors une boîte d'allumettes ?

*Réponse : oui, $1170 = 300 + 870$ et $870 = 6 \times 145$, donc une boîte coûterait $1$ dollar et $45$ cents.*
