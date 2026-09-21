---
id: "7849"
title: "Dix nombres à deux chiffres et deux sommes égales"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [principe des tiroirs, sous-ensembles, sommes, denombrement]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, première période, groupe A « stratégies de base », mercredi 19 matin (Clara Ding), exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

On choisit dix entiers distincts à deux chiffres, c'est-à-dire compris entre $10$ et $99$.

Montrer qu'on peut toujours en extraire deux paquets **disjoints** et non vides ayant la même
somme.

## Hints

1. Les objets seront tous les paquets possibles (les sous-ensembles). Combien y en a-t-il ?
   Pour chacun des dix nombres, il y a deux possibilités : le prendre ou ne pas le prendre.
2. Les tiroirs seront les sommes possibles. Majore la plus grande somme atteignable avec dix
   entiers distincts à deux chiffres.
3. Compare le nombre de paquets et le nombre de sommes possibles. Tu devrais trouver davantage
   de paquets que de sommes.
4. Tu obtiens deux paquets différents de même somme, mais rien ne dit qu'ils sont disjoints.
   Que peux-tu retirer des deux à la fois sans changer l'égalité des sommes ?

## Solution

Notons $a_1, a_2, \ldots, a_{10}$ les dix entiers choisis.

**Étape 1 : on compte les paquets.**

Un paquet, c'est le choix, pour chacun des dix nombres, de le prendre ou non. Cela fait dix
choix indépendants à deux possibilités, donc
$$2^{10} = 1024$$
paquets (en comptant le paquet vide).

**Étape 2 : on compte les sommes possibles.**

La somme d'un paquet est un entier compris entre $0$ (paquet vide) et la somme des dix nombres.
Comme les dix entiers sont distincts et valent au plus $99$, leur somme est au plus
$$99 + 98 + 97 + 96 + 95 + 94 + 93 + 92 + 91 + 90 = 945 .$$

Les sommes possibles sont donc des entiers de $0$ à $945$ : il y en a au plus $946$.

**Étape 3 : le principe des tiroirs.**

On a $1024$ paquets et au plus $946$ valeurs de somme. Comme
$$1024 > 946 ,$$
deux paquets **différents** ont la même somme. Notons-les $A$ et $B$, avec $A \neq B$ et
$$\text{somme}(A) = \text{somme}(B) .$$

**Étape 4 : on les rend disjoints.**

Ils ne sont pas forcément disjoints. Notons $C = A \cap B$ leur partie commune, et posons
$$A' = A \setminus C \qquad \text{et} \qquad B' = B \setminus C .$$

Ces deux paquets sont disjoints par construction. Et comme on a retiré exactement les mêmes
nombres des deux côtés,
$$\text{somme}(A') = \text{somme}(A) - \text{somme}(C)
 = \text{somme}(B) - \text{somme}(C) = \text{somme}(B') .$$

Les sommes restent égales.

**Étape 5 : aucun des deux n'est vide.**

Comme $A \neq B$, au moins l'un des deux paquets $A'$ et $B'$ est non vide, disons $A'$. Sa
somme est alors strictement positive, puisque tous les nombres valent au moins $10$. Donc la
somme de $B'$ est elle aussi strictement positive, donc $B'$ n'est pas vide non plus.

**Conclusion.** Les paquets $A'$ et $B'$ sont disjoints, non vides, et de même somme.

*Remarque.* La majoration de l'étape 2 est très grossière : on n'a jamais utilisé le fait que
les nombres font deux chiffres, sinon pour majorer la somme. C'est justement ce qui rend
l'argument si économique : il suffit que $2^{10}$ dépasse le nombre de sommes possibles.
