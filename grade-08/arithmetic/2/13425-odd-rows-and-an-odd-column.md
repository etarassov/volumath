---
id: "13425"
title: "Des lignes impaires et une colonne impaire"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [parite, tableau, double comptage, raisonnement par l absurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2023"
  reference: "2023-10_Sujet-coupe-Animath-automne-2023.pdf, épreuve collège, exercice 3 (et épreuve lycée, exercice 10) ; corrigé 2023-10_Corrige-coupe-Animath-automne-2023.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/10/Sujet-coupe-Animath-automne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2023-10_Sujet-coupe-Animath-automne-2023.pdf"
---

## Statement

On écrit un entier strictement positif dans chacune des $25$ cases d'un tableau carré de $5$ lignes et $5$ colonnes. Pour chaque ligne, la somme des cinq entiers de cette ligne est un nombre impair.

Montrer qu'il existe au moins une colonne dont la somme des cinq entiers est, elle aussi, impaire.

## Hints

1. Additionne les sommes des cinq lignes. Quel nombre obtiens-tu ? Est-il pair ou impair ?
2. Ce même nombre peut se calculer d'une autre façon, à partir des colonnes.
3. Que se passerait-il si toutes les colonnes avaient une somme paire ?

## Solution

On note $T$ la somme des $25$ nombres du tableau. On va calculer sa parité de deux façons.

**En additionnant les lignes.** $T$ est la somme des sommes des cinq lignes, donc une somme de cinq nombres impairs. Or deux nombres impairs ont une somme paire. En groupant les cinq sommes en deux paires et un nombre seul, on obtient

$$T = (\text{pair}) + (\text{pair}) + (\text{impair}),$$

qui est impair. Donc **$T$ est impair**.

**En additionnant les colonnes.** $T$ est aussi la somme des sommes des cinq colonnes, puisque chaque case est dans exactement une colonne. Supposons que les cinq colonnes aient toutes une somme paire. Alors $T$ serait une somme de nombres pairs, donc pair.

C'est impossible, puisque $T$ est impair. Notre supposition est donc fausse.

**Conclusion.** Au moins une colonne du tableau a une somme impaire.

*Remarque.* Les sommes des lignes ne sont pas forcément égales entre elles : il ne faut pas écrire « $T$ vaut $5$ fois la somme d'une ligne ». L'argument ci-dessus n'en a pas besoin.

## Going further

1. Montrer que la conclusion peut être fausse pour un tableau de $4$ lignes et $4$ colonnes.
2. Et pour un tableau de $5$ lignes et $6$ colonnes, où chaque ligne a une somme impaire ?
