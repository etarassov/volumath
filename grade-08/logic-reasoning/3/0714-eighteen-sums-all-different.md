---
id: "0714"
title: "Dix-huit sommes toutes différentes ?"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 20
tags: [tiroirs, echiquier, somme, impossibilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Combinatoire », niveau collège - débutants"
  reference: "Combinatoire.Invariants.pdf, exercice 44, envoi POFM 2018-2019"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Combinatoire.Invariants.pdf"
---

## Statement

Dans chaque case d'un échiquier $8 \times 8$, on écrit $0$, $1$ ou $-1$. On a donc $64$ nombres écrits, et on a le droit de les choisir comme on veut.

On calcule ensuite dix-huit sommes :

- la somme des huit nombres de chacune des $8$ lignes ;
- la somme des huit nombres de chacune des $8$ colonnes ;
- la somme des huit nombres de chacune des $2$ grandes diagonales.

Est-il possible que ces dix-huit sommes soient toutes différentes les unes des autres ?

## Hints

1. Combien de sommes calcule-t-on en tout ? Compte bien : les lignes, les colonnes, et les deux diagonales.
2. Chacune de ces sommes est une somme de huit nombres valant chacun $0$, $1$ ou $-1$. Quelle est la plus grande valeur qu'une telle somme peut prendre ? Et la plus petite ?
3. Combien y a-t-il d'entiers entre la plus petite et la plus grande valeur possibles ? Compare ce nombre au nombre de sommes.
4. Si tu dois ranger dix-huit objets dans dix-sept tiroirs, que se passe-t-il ?

## Solution

**Étape 1. Combien de sommes ?**

Il y a $8$ lignes, $8$ colonnes et $2$ grandes diagonales, soit

$$8 + 8 + 2 = 18 \text{ sommes.}$$

**Étape 2. Quelles valeurs ces sommes peuvent-elles prendre ?**

Chacune des dix-huit sommes porte sur huit cases, et chaque case contient $0$, $1$ ou $-1$.

- La somme est la plus grande possible quand les huit cases contiennent $1$ : elle vaut alors $8$.
- Elle est la plus petite possible quand les huit cases contiennent $-1$ : elle vaut alors $-8$.

De plus, une somme d'entiers est un entier. Chaque somme est donc un entier compris entre $-8$ et $8$. Les valeurs possibles sont

$$-8,\ -7,\ -6,\ \ldots,\ -1,\ 0,\ 1,\ \ldots,\ 7,\ 8$$

et il y en a $8 + 1 + 8 = 17$.

**Étape 3. Le principe des tiroirs.**

On a $18$ sommes à ranger dans $17$ cases possibles. Comme il y a plus de sommes que de valeurs disponibles, deux au moins des dix-huit sommes tombent forcément sur la même valeur.

C'est exactement le principe des tiroirs : si l'on range $18$ chaussettes dans $17$ tiroirs, un tiroir au moins en reçoit deux.

**Réponse : non, c'est impossible. Deux des dix-huit sommes sont toujours égales.**

Remarque : le raisonnement ne dépend pas du tout de la façon dont on remplit l'échiquier. Il ne regarde jamais le contenu des cases, seulement le nombre de sommes et le nombre de valeurs qu'elles peuvent prendre.

## Going further

Et si l'on renonçait aux deux diagonales, pour ne garder que les $16$ sommes des lignes et des colonnes ? Le comptage précédent ne conclut plus rien : $16$ sommes pour $17$ valeurs possibles, il y a la place.

Et de fait, c'est possible. Voici un échiquier qui marche, construit en escalier. La dernière colonne donne la somme de chaque ligne, et la dernière ligne donne la somme de chaque colonne.

| | | | | | | | | **ligne** |
|---|---|---|---|---|---|---|---|---|
| $1$ | $1$ | $1$ | $1$ | $1$ | $1$ | $1$ | $1$ | $8$ |
| $0$ | $-1$ | $-1$ | $-1$ | $-1$ | $-1$ | $-1$ | $-1$ | $-7$ |
| $1$ | $-1$ | $1$ | $1$ | $1$ | $1$ | $1$ | $1$ | $6$ |
| $1$ | $-1$ | $0$ | $-1$ | $-1$ | $-1$ | $-1$ | $-1$ | $-5$ |
| $1$ | $-1$ | $1$ | $-1$ | $1$ | $1$ | $1$ | $1$ | $4$ |
| $1$ | $-1$ | $1$ | $-1$ | $0$ | $-1$ | $-1$ | $-1$ | $-3$ |
| $1$ | $-1$ | $1$ | $-1$ | $1$ | $-1$ | $1$ | $1$ | $2$ |
| $1$ | $-1$ | $1$ | $-1$ | $1$ | $-1$ | $0$ | $-1$ | $-1$ |
| $7$ | $-6$ | $5$ | $-4$ | $3$ | $-2$ | $1$ | $0$ | **colonne** |

Les huit sommes de lignes valent $8, -7, 6, -5, 4, -3, 2, -1$ et les huit sommes de colonnes valent $7, -6, 5, -4, 3, -2, 1, 0$. Les seize valeurs sont bien toutes différentes : ce sont tous les entiers de $-7$ à $8$.

Il suffit donc d'ajouter les deux diagonales à cette liste pour que les tiroirs débordent.
