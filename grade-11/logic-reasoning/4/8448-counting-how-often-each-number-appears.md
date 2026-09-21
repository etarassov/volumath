---
id: "8448"
title: "Chaque nombre remplacé par son nombre d'apparitions"
grade: 11
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [monovariant, suite croissante, bornee, processus, comptage]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe B"
  reference: "Poly-2021-Valbonne.pdf, Groupe B, « Invariants, Monovariants, Pavages et Coloriages » (Savinien Kreczman), exercice 12"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

On écrit sur une ligne $2018$ entiers naturels, dans l'ordre que l'on veut et avec les répétitions que l'on veut.

Puis on construit la ligne suivante ainsi : sous chaque nombre, on écrit **combien de fois ce nombre apparaît dans la ligne du dessus**. On recommence ensuite le même procédé sur la nouvelle ligne, et ainsi de suite indéfiniment.

Voici ce que cela donne sur un exemple à $6$ nombres :

| ligne 1 | 3 | 3 | 5 | 7 | 7 | 7 |
|---|---|---|---|---|---|---|
| ligne 2 | 2 | 2 | 1 | 3 | 3 | 3 |
| ligne 3 | 2 | 2 | 1 | 3 | 3 | 3 |

(dans la ligne 1, le $3$ apparaît deux fois, le $5$ une fois, le $7$ trois fois ; la ligne 3 est déjà identique à la ligne 2).

Montrer qu'à partir d'un certain rang, toutes les lignes écrites sont identiques.

## Hints

1. Fais tourner le procédé toi-même sur quelques exemples courts, par exemple $1, 2, 3, 4$ puis $1, 1, 2, 3$. Que remarques-tu si tu lis une **colonne** de haut en bas ?
2. Il semble que chaque colonne soit croissante. Essaie de le démontrer, en partant de la deuxième ligne.
3. Note $x$ le nombre situé ligne $r$, colonne $i$, et $a$ celui situé juste en dessous. Par définition, $x$ apparaît $a$ fois dans la ligne $r$. Que peux-tu dire, du coup, du nombre d'apparitions de $a$ dans la ligne $r+1$ ?
4. Une colonne croissante ne peut pas croître pour toujours : les nombres écrits sont tous majorés par quelque chose de simple.

## Solution

Numérotons les lignes $1, 2, 3, \ldots$ et les colonnes $1$ à $2018$. Notons $u_{r,i}$ le nombre situé ligne $r$, colonne $i$.

### Étape 1. Les nombres écrits sont bornés

Dès la deuxième ligne, chaque nombre écrit est un nombre d'apparitions parmi $2018$ nombres. Donc

$$1 \leqslant u_{r,i} \leqslant 2018 \quad \text{pour tout } r \geqslant 2.$$

### Étape 2. Chaque colonne est croissante à partir de la ligne 2

C'est le cœur de l'exercice. Fixons une ligne $r \geqslant 1$ et une colonne $i$, et posons

$$x = u_{r,i}, \qquad a = u_{r+1,i}.$$

Par définition du procédé, $a$ est le nombre de fois que $x$ apparaît dans la ligne $r$.

Le nombre $x$ occupe donc exactement $a$ cases de la ligne $r$. Regardons ces $a$ cases, et ce qui est écrit **juste en dessous** de chacune d'elles. Sous chacune, on écrit le nombre d'apparitions de $x$ dans la ligne $r$, c'est-à-dire $a$, à chaque fois.

Autrement dit : **la valeur $a$ occupe au moins $a$ cases de la ligne $r+1$.** (Au moins, et pas exactement, car $a$ peut aussi apparaître ailleurs dans la ligne $r+1$, sous d'autres nombres que $x$.)

Or $u_{r+2,i}$ est, par définition, le nombre d'apparitions de $a = u_{r+1,i}$ dans la ligne $r+1$. Ce nombre est donc au moins $a$ :

$$u_{r+2,i} \geqslant u_{r+1,i}.$$

Ceci vaut pour tout $r \geqslant 1$, donc, à colonne $i$ fixée, la suite

$$u_{2,i}, \; u_{3,i}, \; u_{4,i}, \; \ldots$$

est **croissante**.

### Étape 3. Chaque colonne finit par se stabiliser

La colonne $i$ donne donc, à partir de la ligne $2$, une suite d'entiers croissante et majorée par $2018$.

Une telle suite ne peut pas augmenter plus de $2018$ fois : chaque augmentation fait gagner au moins $1$, et on part d'au moins $1$ pour ne jamais dépasser $2018$. À partir d'un certain rang $R_i$, la colonne $i$ ne bouge donc plus : elle est constante.

### Étape 4. Conclusion

Posons

$$R = \max(R_1, R_2, \ldots, R_{2018}),$$

le maximum portant sur les $2018$ colonnes, en nombre fini.

À partir de la ligne $R$, **aucune** colonne ne change plus. Chaque ligne est donc identique à la précédente, et toutes les lignes écrites à partir de la ligne $R$ sont identiques entre elles.

C'est exactement ce qu'il fallait démontrer.

## Going further

On peut préciser à quoi ressemblent les lignes une fois la stabilité atteinte. Si une ligne est identique à la suivante, alors chaque nombre $v$ qui y figure apparaît exactement $v$ fois. La ligne est donc découpée en paquets : un paquet de $v$ cases toutes égales à $v$, un autre paquet de $w$ cases toutes égales à $w$, et ainsi de suite, avec

$$v + w + \cdots = 2018.$$

Réciproquement, toute ligne de cette forme est stable. Dans l'exemple du début, la ligne $2, 2, 1, 3, 3, 3$ est bien faite d'un paquet de deux $2$, d'un paquet d'un $1$ et d'un paquet de trois $3$, et $2 + 1 + 3 = 6$.

La démonstration ci-dessus ne dit rien de la vitesse : elle garantit la stabilisation sans donner le rang $R$. C'est le propre des arguments par **monovariant borné**, qui prouvent qu'un processus s'arrête sans dire quand.
