---
id: "7242"
title: "Deux millions de Parisiens et leurs cheveux"
grade: 8
theme: combinatorics
difficulty: 2
duration_min: 15
tags: [tiroirs, comptage, division]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2018"
  reference: "Poly_final_CJ18.pdf, « Débutants », jeudi 25 matin (Vincent Jugé), principe des tiroirs, exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_final_CJ18.pdf"
---

## Statement

Paris compte deux millions d'habitants. Un être humain a au plus $600\,000$ cheveux sur la tête.

Au vu de ces seules informations, combien peut-on être certain de trouver de Parisiens ayant
exactement le même nombre de cheveux sur la tête ?

## Hints

1. Combien de nombres de cheveux différents sont possibles ? Attention à ne pas oublier la
   possibilité d'être chauve.
2. Imagine $600\,001$ tiroirs, un par nombre de cheveux possible, et range chaque Parisien dans
   son tiroir.
3. Si chaque tiroir contenait au plus trois Parisiens, combien de Parisiens y aurait-il au
   maximum ?

## Solution

**Les tiroirs.**

Le nombre de cheveux d'un Parisien est un entier compris entre $0$ (une personne chauve) et
$600\,000$. Cela fait
$$600\,001 \text{ valeurs possibles.}$$

Fabriquons un tiroir par valeur possible, et rangeons chaque Parisien dans le tiroir correspondant
à son nombre de cheveux : $2\,000\,000$ Parisiens à ranger dans $600\,001$ tiroirs.

**Raisonnons par l'absurde.**

Supposons qu'aucun tiroir ne contienne quatre Parisiens, c'est-à-dire que chaque tiroir en
contienne au plus trois. Alors le nombre total de Parisiens serait au plus
$$3 \times 600\,001 = 1\,800\,003 .$$

Or il y a $2\,000\,000$ de Parisiens, et
$$2\,000\,000 > 1\,800\,003 .$$

C'est impossible.

**Conclusion.**

Un tiroir au moins contient donc quatre Parisiens : **on est certain de trouver quatre Parisiens
ayant exactement le même nombre de cheveux.**

## Going further

Peut-on faire mieux et garantir cinq Parisiens ? Non : si chaque tiroir contenait au plus quatre
Parisiens, on aurait au plus
$$4 \times 600\,001 = 2\,400\,004$$
Parisiens, ce qui est compatible avec les deux millions annoncés. Autrement dit, rien dans les
données ne l'interdit : il se pourrait que chaque nombre de cheveux soit partagé par au plus
quatre personnes.

La réponse « quatre » est donc la meilleure qu'on puisse tirer de ces seules informations.
