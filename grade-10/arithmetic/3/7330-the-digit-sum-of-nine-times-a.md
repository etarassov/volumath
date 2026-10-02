---
id: "7330"
title: "La somme des chiffres de 9A"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [chiffres, somme-des-chiffres, soustraction, retenues, telescopage]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2008"
  reference: "stage_ete_2008.pdf, « Les exercices de la seconde mi-temps », en TD, arithmétique, exercice 23"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2008.pdf"
---

## Statement

Dans l'écriture décimale du nombre entier $A$, les chiffres vont en **croissant strict** de gauche à droite. Par exemple $A = 1\,479$ convient, et $A = 3\,357$ ne convient pas.

**Que vaut la somme des chiffres de $9A$ ?**

Commence par essayer sur quelques exemples, puis démontre ce que tu observes.

## Hints

1. Essaie avec $A = 7$, puis $A = 13$, puis $A = 1\,479$, puis $A = 123\,456\,789$. Que remarques-tu ?
2. Multiplier par $9$ est pénible. Mais $9A = 10A - A$, et poser une soustraction, c'est plus facile que de poser une multiplication.
3. Écris la soustraction en colonnes : $10A$, c'est $A$ suivi d'un zéro. Les chiffres de $A$ se retrouvent donc décalés d'un cran.
4. Colonne des unités : on doit calculer $0 - a_k$, il faut donc une retenue. Toutes les autres colonnes font $a_{i} - a_{i-1}$ : est-ce positif ? C'est exactement là que sert l'hypothèse « chiffres croissants ».
5. Une fois les chiffres de $9A$ écrits, additionne-les : presque tout s'annule deux à deux.

## Solution

### On regarde d'abord des exemples

$$9 \times 7 = 63 \quad (6+3 = 9), \qquad 9 \times 13 = 117 \quad (1+1+7 = 9),$$
$$9 \times 1\,479 = 13\,311 \quad (1+3+3+1+1 = 9) .$$

À chaque fois la somme des chiffres vaut $9$. Démontrons-le.

### La bonne idée : multiplier par 9, c'est soustraire

Notons les chiffres de $A$ :
$$A = \overline{a_1 a_2 a_3 \cdots a_k} \qquad \text{avec} \qquad a_1 < a_2 < a_3 < \cdots < a_k .$$

Plutôt que de multiplier par $9$, écrivons
$$9A = 10A - A ,$$
et posons la soustraction. Le nombre $10A$ s'écrit avec les chiffres de $A$ suivis d'un zéro, donc la ligne du haut a un chiffre de plus que celle du bas, et les chiffres de $A$ se retrouvent décalés d'un rang :

| | | | | | | |
|---|---|---|---|---|---|---|
| | $a_1$ | $a_2$ | $\cdots$ | $a_{k-1}$ | $a_k$ | $0$ |
| $-$ | | $a_1$ | $\cdots$ | $a_{k-2}$ | $a_{k-1}$ | $a_k$ |

Effectuons colonne par colonne, en partant de la droite.

- **Colonne des unités.** On doit faire $0 - a_k$. Comme $a_k \geqslant 1$, c'est impossible tel quel : on emprunte $10$ à la colonne voisine. Le chiffre des unités de $9A$ est donc $10 - a_k$, et la colonne des dizaines doit rendre $1$.
- **Colonne des dizaines.** On doit faire $a_k - a_{k-1} - 1$ (le $-1$ est la retenue). Comme $a_k > a_{k-1}$, on a $a_k - a_{k-1} \geqslant 1$, donc $a_k - a_{k-1} - 1 \geqslant 0$ : **pas besoin d'emprunter**. C'est ici, et seulement ici, que sert l'hypothèse sur les chiffres croissants.
- **Toutes les colonnes suivantes.** On doit faire $a_i - a_{i-1}$, qui est $\geqslant 1$ puisque les chiffres croissent strictement. Là encore, pas d'emprunt.
- **Colonne de gauche.** Il ne reste que $a_1$.

Les chiffres de $9A$, lus de gauche à droite, sont donc
$$a_1, \quad a_2 - a_1, \quad a_3 - a_2, \quad \ldots, \quad a_{k-1} - a_{k-2}, \quad a_k - a_{k-1} - 1, \quad 10 - a_k .$$

(Ce sont bien des chiffres : chacun est compris entre $0$ et $9$.)

### La somme se télescope

Additionnons-les dans l'ordre. Les termes s'annulent deux à deux :

$$\underbrace{a_1 + (a_2 - a_1) + (a_3 - a_2) + \cdots + (a_{k-1} - a_{k-2})}_{\textstyle = \; a_{k-1}} + (a_k - a_{k-1} - 1) + (10 - a_k) .$$

Le premier bloc vaut $a_{k-1}$. En ajoutant le terme suivant on obtient $a_k - 1$. En ajoutant le dernier, il reste
$$a_k - 1 + 10 - a_k = 9 .$$

### Conclusion

$$\boxed{\text{La somme des chiffres de } 9A \text{ vaut toujours } 9 .}$$

Et elle ne dépend ni de $A$, ni du nombre de ses chiffres.

*(Le cas où $A$ n'a qu'un seul chiffre est inclus : la soustraction n'a alors que deux colonnes, et on trouve les chiffres $a_1 - 1$ et $10 - a_1$, de somme $9$. Par exemple $9 \times 7 = 63$.)*

## Going further

1. Un multiple de $9$ a toujours une somme de chiffres multiple de $9$. Ce qui est remarquable ici, c'est que cette somme vaut exactement $9$, et pas $18$ ou $27$. Trouve un entier $B$ dont la somme des chiffres de $9B$ vaut $18$.
2. Reprends le raisonnement avec $A$ dont les chiffres sont croissants **au sens large** ($a_1 \leqslant a_2 \leqslant \cdots$). Où la démonstration se casse-t-elle ? Teste sur $A = 1\,122$.
3. Et si l'on demandait la somme des chiffres de $99A$ ? Essaie d'abord sur des exemples.
