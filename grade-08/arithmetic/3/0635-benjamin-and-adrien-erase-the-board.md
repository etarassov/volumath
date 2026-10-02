---
id: "0635"
title: "Benjamin et Adrien effacent le tableau"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [divisibilite, restes, somme, raisonnement, encadrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Ensembles. Géométrie »"
  reference: "Ensembles.Geometry.pdf, 22 septembre 2023, problème P 31, section « Ensembles »"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Ensembles.Geometry.pdf"
---

## Statement

Sur un tableau sont écrits les neuf nombres

$$1, \quad 3, \quad 4, \quad 6, \quad 8, \quad 9, \quad 11, \quad 12, \quad 16.$$

Benjamin et Adrien effacent chacun quatre nombres. Ils constatent alors que la somme des nombres effacés par Benjamin est trois fois plus grande que la somme des nombres effacés par Adrien.

Quel nombre est resté sur le tableau ? Quels nombres Benjamin a-t-il effacés, et lesquels Adrien a-t-il effacés ?

## Hints

1. Neuf nombres, huit effacés : il en reste un seul. Commence par calculer la somme des neuf nombres.
2. Appelle $S$ la somme des nombres effacés par Adrien. Que vaut alors la somme de tous les nombres effacés, en fonction de $S$ ?
3. La somme des huit nombres effacés est donc un multiple de $4$. Quels nombres du tableau peuvent alors rester ?
4. Une fois le nombre restant connu, tu connais $S$. Cherche quatre nombres de somme $S$ : regarde d'abord combien vaut la somme des quatre plus petits nombres encore au tableau.

## Solution

**La somme de tout.**

$$1 + 3 + 4 + 6 + 8 + 9 + 11 + 12 + 16 = 70.$$

**Ce que vaut la somme des nombres effacés.**

Notons $S$ la somme des quatre nombres effacés par Adrien. Celle de Benjamin vaut alors $3S$, et la somme de tous les nombres effacés vaut

$$S + 3S = 4S.$$

Si $r$ est le nombre resté au tableau, alors

$$70 - r = 4S.$$

**Quel nombre peut rester ?**

L'égalité ci-dessus dit que $70 - r$ est un multiple de $4$. Regardons les restes dans la division par $4$ :

$$70 = 4 \times 17 + 2,$$

donc $70 - r$ est un multiple de $4$ exactement lorsque $r$ laisse lui aussi le reste $2$ dans la division par $4$.

Passons les neuf nombres en revue :

| nombre | $1$ | $3$ | $4$ | $6$ | $8$ | $9$ | $11$ | $12$ | $16$ |
|---|---|---|---|---|---|---|---|---|---|
| reste par $4$ | $1$ | $3$ | $0$ | $\mathbf{2}$ | $0$ | $1$ | $3$ | $0$ | $0$ |

Un seul nombre convient : $r = 6$.

**Les deux sommes.**

$$4S = 70 - 6 = 64, \qquad \text{donc} \qquad S = 16 \quad \text{et} \quad 3S = 48.$$

Adrien a donc effacé quatre nombres de somme $16$, choisis parmi

$$1, \ 3, \ 4, \ 8, \ 9, \ 11, \ 12, \ 16.$$

**Quatre nombres de somme 16.**

Les quatre plus petits de cette liste sont $1$, $3$, $4$ et $8$, et leur somme vaut exactement

$$1 + 3 + 4 + 8 = 16.$$

Tout autre choix de quatre nombres de la liste donnerait une somme **strictement plus grande**, puisqu'il faudrait remplacer au moins un de ces quatre nombres par un nombre plus grand. Il n'y a donc pas d'autre possibilité.

**Conclusion.**

- Le nombre resté au tableau est $6$.
- Adrien a effacé $1$, $3$, $4$ et $8$ (somme $16$).
- Benjamin a effacé $9$, $11$, $12$ et $16$ (somme $48$).

Vérification : $48 = 3 \times 16$ ✔ et $16 + 48 + 6 = 70$ ✔.

## Going further

1. Et si Benjamin avait effacé une somme **deux** fois plus grande que celle d'Adrien ? Quels nombres pourraient rester au tableau ? Y a-t-il encore une solution ?
2. Invente une liste de neuf nombres pour laquelle deux nombres différents pourraient rester au tableau. Le problème n'aurait alors plus de réponse unique.
3. Voici une autre façon de terminer la dernière étape. Montre d'abord qu'Adrien ne peut effacer aucun nombre supérieur ou égal à $9$, car les trois nombres restants devraient alors avoir une somme inférieure à $8$. Conclus.
