---
id: "0109"
title: "Les bidons de lait"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [chiffre-des-unites, divisibilite, unicite, entiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, кружок 7 класса, I полугодие, пособие для преподавателей"
  reference: "Ast2017.pdf, листок 5, задача 5"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017.pdf"
---

## Statement

Une laiterie a livré $206$ litres de lait à un magasin. Le lait est arrivé dans des bidons de $10$ litres et des bidons de $17$ litres, tous remplis à ras bord.

Combien y avait-il de bidons de chaque sorte ?

Il ne suffit pas de trouver une réponse qui marche : il faut aussi montrer qu'il n'y en a pas d'autre.

## Hints

1. Appelle $x$ le nombre de bidons de $10$ litres et $y$ le nombre de bidons de $17$ litres. Quelle égalité l'énoncé donne-t-il entre $x$ et $y$ ?
2. Plutôt que de tout essayer, regarde seulement le **chiffre des unités** des deux côtés de l'égalité. Par quel chiffre se termine $10 \times x$, quel que soit $x$ ?
3. Le chiffre des unités du total ne dépend donc que de $y$. Il doit valoir $6$. Écris les chiffres des unités de $17 \times y$ pour $y = 0$, puis $1$, puis $2$, et ainsi de suite.
4. Tu vas trouver une seule valeur possible pour le chiffre des unités de $y$. Vérifie ensuite quelles valeurs de $y$ ne dépassent pas $206$ litres, puis calcule $x$.

## Solution

**Mise en équation.**

Soit $x$ le nombre de bidons de $10$ litres et $y$ le nombre de bidons de $17$ litres. Ce sont des entiers naturels, et

$$10x + 17y = 206$$

**L'idée : ne regarder que le chiffre des unités.**

Le nombre $10x$ se termine toujours par le chiffre $0$, quel que soit $x$. Donc le chiffre des unités de $10x + 17y$ est exactement celui de $17y$.

Comme le total est $206$, ce chiffre doit valoir $6$ :

$$17y \text{ doit se terminer par } 6$$

**On cherche les $y$ possibles.**

Remarquons d'abord que $17y = 10y + 7y$. Comme $10y$ se termine par $0$, le chiffre des unités de $17y$ est celui de $7y$. On dresse la liste :

| $y$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| $7y$ | $0$ | $7$ | $14$ | $21$ | $28$ | $35$ | $42$ | $49$ | $56$ | $63$ |
| chiffre des unités | $0$ | $7$ | $4$ | $1$ | $8$ | $5$ | $2$ | $9$ | $6$ | $3$ |

Un seul cas donne le chiffre $6$ : celui où $y$ se termine par $8$.

Si $y$ augmente de $10$, le produit $7y$ augmente de $70$ et son chiffre des unités ne change pas. Donc les valeurs possibles de $y$ sont

$$y = 8, \quad y = 18, \quad y = 28, \quad \dots$$

**On élimine les valeurs trop grandes.**

Avec $y = 18$, le lait des bidons de $17$ litres ferait déjà $17 \times 18 = 306$ litres, ce qui dépasse $206$. Les valeurs suivantes sont encore pires.

Il ne reste donc que $y = 8$.

**On termine le calcul.**

$$17 \times 8 = 136 \qquad \text{puis} \qquad 206 - 136 = 70 \qquad \text{puis} \qquad x = 70 \div 10 = 7$$

**Vérification.** $7 \times 10 + 8 \times 17 = 70 + 136 = 206$. 

**Conclusion.** Il y avait $7$ bidons de $10$ litres et $8$ bidons de $17$ litres, et c'est la seule possibilité.

## Going further

1. Même question pour une livraison de $376$ litres, toujours en bidons de $10$ et de $17$ litres. Cette fois il y a deux réponses : lesquelles ?
2. Le magasin peut-il recevoir exactement $100$ litres en utilisant au moins un bidon de $17$ litres ?
3. On reprend les $206$ litres, mais avec des bidons de $10$ et de $12$ litres. La méthode du chiffre des unités laisse maintenant plusieurs valeurs possibles pour $y$. Pourquoi ? Trouve toutes les réponses.
