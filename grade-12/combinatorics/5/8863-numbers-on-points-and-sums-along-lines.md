---
id: "8863"
title: "Des nombres sur des points, des sommes nulles sur les droites"
grade: 12
theme: combinatorics
difficulty: 5
duration_min: 40
tags: [double-comptage, points-et-droites, somme, signe, raisonnement-par-labsurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, entraînement de fin de parcours du Groupe B"
  reference: "Poly-2025-compresse.pdf, Groupe B, « Entraînement de fin de parcours », exercice 4, p. 296 et 299"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

On place $n \geqslant 3$ points dans le plan, qui ne sont **pas tous alignés**. Sur chaque point on écrit un nombre réel.

On suppose que pour **toute** droite passant par au moins deux de ces points, la somme des nombres écrits sur les points de cette droite est nulle.

Montrer que tous les nombres écrits sont nuls.

## Hints

1. Commence par un petit cas concret : trois points non alignés. Écris les trois conditions et résous.
2. Choisis un point $P$ et regarde **toutes** les droites qui passent par $P$ et par au moins un autre point. Combien y en a-t-il au minimum ? Où sert l'hypothèse « pas tous alignés » ?
3. Additionne les $|D|$ sommes nulles associées à ces droites. Chaque point autre que $P$ est compté combien de fois ? Et $P$ lui-même ?
4. Tu obtiens une relation entre le nombre écrit sur $P$ et la somme $S$ de tous les nombres. Que dit-elle sur le **signe** de chaque nombre si $S > 0$ ?
5. Compare ce signe avec le fait que $S$ est justement la somme de tous ces nombres.

## Solution

Notons $s_P$ le nombre écrit sur le point $P$, et
$$S = \sum_{P} s_P$$
la somme de tous les nombres.

### Les droites passant par un point donné

Fixons un point $P$ parmi les $n$, et appelons $D$ l'ensemble des droites qui passent par $P$ et par au moins un autre des $n$ points.

**Il y a au moins deux telles droites**, c'est-à-dire $|D| \geqslant 2$. En effet, s'il n'y en avait qu'une seule, tous les autres points seraient sur cette unique droite, donc les $n$ points seraient alignés, ce que l'énoncé interdit.

**Chaque autre point est sur exactement une droite de $D$.** Soit $Q$ un point différent de $P$. La droite $(PQ)$ appartient à $D$, donc $Q$ est sur au moins une droite de $D$. Et il n'y en a pas deux : deux droites distinctes de $D$ se coupent en $P$ et nulle part ailleurs, donc $Q$, qui n'est pas $P$, ne peut pas appartenir aux deux.

Quant à $P$, il est sur **toutes** les droites de $D$, par définition.

### Le comptage

Additionnons, sur toutes les droites de $D$, la somme des nombres portés par leurs points :
$$\sum_{d \in D} \; \sum_{Q \in d} s_Q .$$

Chaque somme intérieure est nulle par hypothèse, donc le total vaut $0$.

Comptons maintenant ce même total autrement, nombre par nombre. Le nombre $s_Q$ d'un point $Q \neq P$ apparaît une seule fois ; le nombre $s_P$ apparaît $|D|$ fois. Donc le total vaut
$$\underbrace{\sum_{Q} s_Q}_{= \; S} \; + \; (|D| - 1)\, s_P .$$

En effet, la somme $S$ compte déjà $s_P$ une fois, et il faut l'ajouter $|D|-1$ fois de plus.

En rapprochant les deux calculs, pour **chaque** point $P$ :
$$(\star) \qquad S + (|D_P| - 1)\, s_P = 0 ,$$
où $|D_P| \geqslant 2$ est le nombre de droites de $D$ associé à ce point $P$.

### Le signe

La relation $(\star)$ se réécrit
$$s_P = \frac{-S}{|D_P| - 1} ,$$
ce qui a un sens car $|D_P| - 1 \geqslant 1$ n'est pas nul. Le dénominateur est strictement positif, donc

> $s_P$ est du signe opposé à $S$, pour tous les points $P$ à la fois.

Supposons $S > 0$. Alors chaque $s_P$ est strictement négatif, donc leur somme $S$ est strictement négative. Contradiction.

Supposons $S < 0$. Alors chaque $s_P$ est strictement positif, donc $S > 0$. Contradiction.

Il reste donc $S = 0$. En reportant dans $(\star)$ :
$$(|D_P| - 1)\, s_P = 0 ,$$
et comme $|D_P| - 1 \neq 0$, on obtient $s_P = 0$ pour chaque point $P$.

### Conclusion

Tous les nombres écrits sont nuls.

### Ce qui fait marcher la preuve

Un seul comptage, fait de deux façons, transforme une hypothèse portant sur des droites en une relation portant sur un point. Et l'hypothèse « pas tous alignés » n'est pas un détail : elle sert exactement une fois, pour garantir $|D_P| \geqslant 2$. Sans elle, l'énoncé est faux, comme le montre l'exercice ci-dessous.

## Going further

1. Trois points alignés portant $1$, $-2$ et $1$ : vérifier que la seule droite contenant au moins deux points a bien une somme nulle, alors que les nombres ne le sont pas. L'hypothèse « pas tous alignés » est donc indispensable.
2. Reprendre la démonstration en supposant seulement que la somme sur chaque droite est **la même** constante $c$ (pas forcément nulle). Que peut-on conclure ?
