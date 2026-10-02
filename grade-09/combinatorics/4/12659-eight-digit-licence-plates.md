---
id: "12659"
title: "Des plaques d'immatriculation à huit chiffres"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [tiroirs, construction, chiffres, maximum, chiffre-de-controle]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test du 18 mai 2022"
  reference: "2022-07_Enonce-Web-Test-5.pdf, exercice 2 (junior) ; corrigé 2022-06_Corrige-Web-Test-5.pdf. Le corrigé dit que deux plaques sont de la même famille « si leurs sept premiers chiffres sont différents » : il faut lire « identiques ». L'énoncé parle du gouvernement de Bosnie-Herzégovine, remplacé ici par « un pays »."
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/07/Énoncé-Web-Test-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2022-07_Enonce-Web-Test-5.pdf"
---

## Statement

Le gouvernement d'un pays veut mettre en place un nouveau système de plaques d'immatriculation. Chaque plaque portera $8$ chiffres, chacun pouvant valoir $0$, $1$, $2$, $3$, $4$, $5$, $6$, $7$, $8$ ou $9$. De plus, deux plaques distinctes devront toujours avoir **au moins deux chiffres différents**, à la même place. Par exemple, si le gouvernement met en circulation la plaque $00000000$, il ne pourra pas mettre en circulation la plaque $00010000$.

Quel est le nombre maximum de plaques que le gouvernement peut mettre en circulation ?

## Hints

1. Regarde d'abord des plaques plus courtes, à $1$ chiffre, puis à $2$ chiffres. Combien de plaques peut-on mettre en circulation au maximum ?
2. Deux plaques qui ont les mêmes sept premiers chiffres peuvent-elles être toutes les deux en circulation ? Déduis-en une borne sur le nombre de plaques.
3. Pour essayer d'atteindre cette borne, il faut une plaque exactement pour chaque choix des sept premiers chiffres. Le dernier chiffre doit donc être calculé à partir des sept autres. Comment ?
4. Choisis le dernier chiffre pour que la somme des huit chiffres soit un multiple de $10$.

## Solution

On va montrer que **le nombre maximum de plaques est $10^7$, c'est-à-dire dix millions.**

**Étape 1 : il y a au plus $10^7$ plaques.** On dit que deux plaques sont de la même **famille** quand leurs sept premiers chiffres sont identiques. Une famille est donc formée des dix plaques
$$\ldots 0, \quad \ldots 1, \quad \ldots, \quad \ldots 9$$
qui ont les mêmes sept premiers chiffres et ne diffèrent que par le dernier. Il y a autant de familles que de façons de choisir les sept premiers chiffres, soit $10 \times 10 \times \cdots \times 10 = 10^7$ familles.

Deux plaques distinctes d'une même famille ont un seul chiffre différent, le dernier. Elles ne peuvent donc pas être en circulation toutes les deux. Ainsi, le gouvernement met en circulation au plus une plaque par famille, donc **au plus $10^7$ plaques**. C'est le principe des tiroirs : les familles sont les tiroirs, et chaque tiroir contient au plus une plaque.

**Étape 2 : on peut mettre en circulation $10^7$ plaques.** Pour chaque choix des sept premiers chiffres, le gouvernement crée une seule plaque : il choisit le dernier chiffre pour que **la somme des huit chiffres soit un multiple de $10$**.

C'est toujours possible, et d'une seule façon. Si les sept premiers chiffres ont pour somme $s$, le dernier chiffre est $0$ quand $s$ est un multiple de $10$, et sinon c'est $10$ moins le chiffre des unités de $s$. Par exemple, pour $1234567$, la somme vaut $28$, le dernier chiffre est $2$ et la plaque est $12345672$, dont la somme des chiffres vaut $30$.

On obtient ainsi une plaque par famille, soit $10^7$ plaques. Il reste à vérifier que deux d'entre elles ont toujours au moins deux chiffres différents.

Prenons deux plaques distinctes de cette liste. Elles ont au moins un chiffre différent. Supposons qu'elles en aient un seul, à une certaine place, où l'une porte le chiffre $u$ et l'autre le chiffre $v$, avec $u \neq v$. Leurs sept autres chiffres sont les mêmes, donc la différence de leurs sommes de chiffres vaut $u - v$. C'est un nombre non nul compris entre $-9$ et $9$.

Or les deux sommes sont des multiples de $10$, donc leur différence aussi. Le seul multiple de $10$ compris entre $-9$ et $9$ est $0$. C'est une contradiction : les deux plaques ont donc au moins deux chiffres différents.

**Conclusion.** Le gouvernement ne peut pas dépasser $10^7$ plaques, et il peut en mettre $10^7$ en circulation. **Le nombre maximum de plaques est $10^7 = 10\,000\,000$.**

## Going further

- Le dernier chiffre de chaque plaque est un **chiffre de contrôle** : il ne porte aucune information nouvelle, il sert à repérer les erreurs. Si quelqu'un recopie une plaque en se trompant sur un seul chiffre, la somme des chiffres n'est plus un multiple de $10$, et l'erreur se voit. Les numéros de carte bancaire, les codes-barres et les numéros de livres (ISBN) utilisent des chiffres de contrôle construits sur la même idée.
- Le même raisonnement montre qu'avec des plaques de $n$ chiffres, le maximum est $10^{n-1}$. Si l'on exige au moins **trois** chiffres différents entre deux plaques, le problème devient beaucoup plus difficile : c'est le début de la théorie des codes correcteurs d'erreurs.
- Le commentaire des correcteurs note que l'exercice n'a été entièrement résolu que par un seul élève. Plusieurs ont trouvé des constructions avec $10^4$ ou $8! = 40\,320$ plaques, mais très peu ont cherché une borne supérieure, alors qu'un simple principe des tiroirs suffisait. Le conseil des correcteurs : pour trouver la construction, regarder les cas à $1$, $2$ puis $3$ chiffres, et chercher un motif commun.
