---
id: "0228"
title: "Trente par ligne, dix par colonne"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 15
tags: [tableau, somme, double-comptage, raisonnement-par-labsurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей"
  reference: "Ast2017b.pdf, листок 28 «Подсчёт двумя способами», задача 1, с. 79-80"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017b.pdf"
---

## Statement

On veut écrire un nombre dans chaque case d'un tableau rectangulaire de $5$ lignes et $10$ colonnes, de façon que :

- la somme des nombres de chaque ligne soit égale à $30$ ;
- la somme des nombres de chaque colonne soit égale à $10$.

Est-ce possible ?

## Hints

1. Ne cherche pas à construire un tel tableau. Fais plutôt comme si tu en avais un sous les yeux, et essaie d'en tirer un renseignement.
2. Quelle serait la somme de **tous** les nombres du tableau ?
3. Cette somme totale, tu peux la calculer de deux façons : en regroupant les cases ligne par ligne, ou bien en les regroupant colonne par colonne. Fais les deux calculs.
4. Compare les deux résultats.

## Solution

**L'idée : compter la même chose de deux façons.**

Supposons qu'un tel tableau existe, et appelons $S$ la somme de tous les nombres qu'il contient. Le tableau a $5 \times 10 = 50$ cases, donc $S$ est la somme de ces $50$ nombres.

**Premier calcul, ligne par ligne.**

Les $5$ lignes contiennent ensemble toutes les cases, chacune une seule fois. La somme totale est donc la somme des sommes des lignes. Chaque ligne a pour somme $30$, et il y a $5$ lignes :

$$S = 5 \times 30 = 150.$$

**Deuxième calcul, colonne par colonne.**

Les $10$ colonnes contiennent elles aussi toutes les cases, chacune une seule fois. La somme totale est donc aussi la somme des sommes des colonnes. Chaque colonne a pour somme $10$, et il y a $10$ colonnes :

$$S = 10 \times 10 = 100.$$

**La contradiction.**

Le même nombre $S$ vaudrait à la fois $150$ et $100$. C'est impossible, car $150 \neq 100$.

**Conclusion.**

Un tel tableau ne peut pas exister. Il est donc **impossible** de remplir le tableau comme demandé.

Remarquons que l'énoncé ne dit rien sur les nombres écrits dans les cases : ils pourraient être négatifs, ou avoir des virgules. Cela ne change rien, le raisonnement ci-dessus n'utilise jamais leur nature.

## Going further

1. Peut-on écrire des nombres dans un tableau de $5$ lignes et $5$ colonnes de façon que la somme de chaque ligne soit positive et que la somme de chaque colonne soit négative ?
2. On garde un tableau de $5$ lignes et $10$ colonnes, mais on demande maintenant une somme de $30$ par ligne et de $15$ par colonne. Est-ce possible ? Si oui, donner un exemple.
3. Dans un tableau de $5$ lignes et $10$ colonnes, on veut la somme $a$ sur chaque ligne et la somme $b$ sur chaque colonne. Quelle relation doivent vérifier $a$ et $b$ ? Montrer que dès que cette relation est vraie, on sait remplir le tableau.
