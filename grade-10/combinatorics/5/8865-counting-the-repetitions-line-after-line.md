---
id: "8865"
title: "Compter les répétitions, ligne après ligne"
grade: 10
theme: combinatorics
difficulty: 5
duration_min: 45
tags: [invariant, monotonie, comptage, suites-dentiers, stabilisation]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe B, « Combinatoire : Révisions » (Maryam), d'après les stages de Valbonne 2018 et 2023"
  reference: "Poly-2025-compresse.pdf, Groupe B, « Combinatoire : Révisions », exercice 12, p. 227 et 230. La justification imprimée affirme que « la somme des nombres d'une ligne autre que la première fait 2018 », ce qui est faux : la ligne 1, 1, 2 donne 2, 2, 1, de somme 5 et non 3. La démonstration ci-dessous utilise à la place que chaque nombre écrit est majoré par 2018, ce qui suffit."
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Aurélien écrit sur une ligne $2018$ entiers naturels, dans l'ordre qu'il veut et avec les répétitions qu'il veut.

Puis il fabrique une deuxième ligne juste en dessous : sous chaque nombre de la première ligne, il écrit **combien de fois ce nombre apparaît dans la première ligne**. Il recommence ensuite le même procédé à partir de la deuxième ligne pour fabriquer la troisième, et ainsi de suite indéfiniment.

Voici ce que cela donne avec six nombres au lieu de $2018$ :

| ligne | | | | | | |
|---|---|---|---|---|---|---|
| 1 | 3 | 1 | 4 | 1 | 5 | 1 |
| 2 | 1 | 3 | 1 | 3 | 1 | 3 |
| 3 | 3 | 3 | 3 | 3 | 3 | 3 |
| 4 | 6 | 6 | 6 | 6 | 6 | 6 |
| 5 | 6 | 6 | 6 | 6 | 6 | 6 |

Montrer qu'au bout d'un certain temps, toutes les lignes qu'Aurélien écrit sont identiques.

## Hints

1. Reprends l'exemple et regarde une **colonne** plutôt qu'une ligne, à partir de la deuxième ligne. Que remarques-tu ?
2. Note $x$ le nombre écrit à la ligne $k$, colonne $j$, et $a$ le nombre écrit juste en dessous. Combien de fois le nombre $x$ apparaît-il dans la ligne $k$ ? Que lit-on sous chacune de ces apparitions ?
3. Déduis-en que le nombre $a$ apparaît au moins $a$ fois dans la ligne $k+1$. Qu'est-ce que cela dit du nombre écrit à la ligne $k+2$, colonne $j$ ?
4. Un nombre écrit à partir de la ligne $2$ compte des apparitions parmi $2018$ nombres : il reste donc entre $1$ et $2018$. Combien de fois au plus des entiers qui ne diminuent jamais et restent entre $1$ et $2018$ peuvent-ils augmenter ?
5. Il y a $2018$ colonnes, donc un nombre **fini** de colonnes : chacune se stabilise, et on peut attendre que toutes l'aient fait.

## Solution

Notons $L_k(j)$ le nombre écrit à la ligne $k$, colonne $j$, pour $1 \leqslant j \leqslant 2018$.

### Étape 1 : chaque colonne est croissante à partir de la ligne 2

C'est le cœur de la démonstration. Fixons une ligne $k$ et une colonne $j$, et posons
$$x = L_k(j), \qquad a = L_{k+1}(j) .$$

Par définition, $a$ est le nombre d'apparitions de $x$ dans la ligne $k$. Donc $x$ occupe exactement $a$ cases de la ligne $k$.

Regardons ce qui est écrit sous chacune de ces $a$ cases. Sous chacune, on écrit le nombre d'apparitions de $x$ dans la ligne $k$, c'est-à-dire… $a$ à chaque fois. Donc

> le nombre $a$ occupe au moins $a$ cases de la ligne $k+1$.

(Au moins, car $a$ peut aussi apparaître ailleurs dans la ligne $k+1$, sous d'autres valeurs.)

Or $L_{k+2}(j)$ est justement le nombre d'apparitions de $L_{k+1}(j) = a$ dans la ligne $k+1$. On vient de voir que ce nombre vaut au moins $a$ :
$$L_{k+2}(j) \geqslant L_{k+1}(j) .$$

Cela vaut pour toute ligne $k \geqslant 1$ et toute colonne $j$. Autrement dit, **à partir de la ligne 2, chaque colonne ne fait que croître** (au sens large) quand on descend.

### Étape 2 : ces nombres sont bornés

À partir de la ligne $2$, chaque nombre écrit compte des apparitions parmi $2018$ nombres. Il est donc compris entre $1$ et $2018$ :
$$1 \leqslant L_k(j) \leqslant 2018 \qquad \text{pour tout } k \geqslant 2 .$$

### Étape 3 : chaque colonne se stabilise

Fixons une colonne $j$. Les nombres $L_2(j), L_3(j), L_4(j), \dots$ sont des entiers qui ne diminuent jamais et restent compris entre $1$ et $2018$. Chaque fois qu'ils augmentent, ils gagnent au moins $1$, donc ils ne peuvent augmenter qu'au plus $2017$ fois : à partir d'une certaine ligne, disons la ligne $N_j$, ils ne changent plus.

### Étape 4 : on attend que toutes les colonnes soient stabilisées

Il y a $2018$ colonnes, c'est-à-dire un nombre **fini**. Posons
$$N = \max(N_1, N_2, \dots, N_{2018}) ,$$
qui est bien défini puisqu'il s'agit du maximum d'une liste finie d'entiers.

Pour toute ligne $k \geqslant N$ et toute colonne $j$, on a alors $L_{k+1}(j) = L_k(j)$. Cela signifie que la ligne $k+1$ est identique à la ligne $k$.

### Conclusion

À partir de la ligne $N$, toutes les lignes écrites par Aurélien sont identiques entre elles.

### Une remarque sur la finitude

Les deux mots « fini » font tout le travail. Si la ligne comportait une infinité de nombres, l'étape 2 tomberait (un nombre pourrait apparaître une infinité de fois) et l'étape 4 aussi (un maximum sur une infinité de colonnes n'existe pas forcément). Le fait que $2018$ soit $2018$ et pas une autre valeur, en revanche, ne sert à rien : la démonstration marche à l'identique avec $n$ nombres.

## Going further

1. Vérifier l'étape 1 sur l'exemple du tableau, colonne par colonne.
2. Trouver une ligne de départ de six nombres pour laquelle la stabilisation demande le plus de lignes possible. Combien de lignes faut-il au maximum ?
3. Une fois la stabilisation atteinte, la ligne obtenue est constante dans l'exemple. Est-ce toujours le cas ? Chercher une ligne de départ dont la ligne finale n'est pas constante.
