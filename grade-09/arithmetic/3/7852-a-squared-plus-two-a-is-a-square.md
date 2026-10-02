---
id: "7852"
title: "Quand a² + 2a est-il un carré parfait ?"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [carre-parfait, encadrement, carres-consecutifs]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, quatrième période, groupe A « arithmétique », lundi 24 matin (Julien Portier), exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Trouver tous les entiers naturels $a$ tels que $a^2 + 2a$ soit le carré d'un entier.

## Hints

1. Calcule $a^2 + 2a$ pour $a = 0, 1, 2, 3, 4$ et compare chaque résultat aux carrés parfaits
   voisins. Que remarques-tu ?
2. L'expression $a^2 + 2a$ ressemble beaucoup à une identité remarquable, à un petit détail
   près. Lequel ?
3. Pour $a > 0$, encadre $a^2 + 2a$ entre deux carrés **consécutifs**. Combien de carrés
   parfaits y a-t-il strictement entre $k^2$ et $(k+1)^2$ ?

## Solution

**Étape 1 : le cas $a = 0$.**

$$0^2 + 2 \times 0 = 0 = 0^2 .$$

C'est bien un carré parfait. Donc $a = 0$ convient.

**Étape 2 : le cas $a > 0$.**

Encadrons $a^2 + 2a$ entre deux carrés consécutifs.

*Minoration.* Comme $a > 0$, on a $2a > 0$, donc
$$a^2 + 2a > a^2 .$$

*Majoration.* L'identité remarquable donne $(a+1)^2 = a^2 + 2a + 1$, donc
$$a^2 + 2a = (a+1)^2 - 1 < (a+1)^2 .$$

On obtient donc
$$a^2 < a^2 + 2a < (a+1)^2 .$$

**Étape 3 : rien entre deux carrés consécutifs.**

Si $a^2 + 2a$ était le carré d'un entier $k$, on aurait $a^2 < k^2 < (a+1)^2$, donc (les trois
nombres étant positifs) $a < k < a+1$. Or il n'existe aucun entier strictement compris entre
$a$ et $a+1$. C'est impossible.

**Conclusion.**

Le seul entier naturel qui convient est $\boxed{a = 0}$.

*Ce qui se passe vraiment.* Le nombre $a^2 + 2a$ vaut exactement $(a+1)^2 - 1$ : il est toujours
« un de moins qu'un carré ». Or les seuls carrés parfaits qui diffèrent de $1$ sont $0$ et $1$,
ce qui impose $a + 1 = 1$, donc $a = 0$.
