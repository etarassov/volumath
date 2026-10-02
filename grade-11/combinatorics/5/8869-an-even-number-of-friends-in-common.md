---
id: "8869"
title: "Un nombre pair d'amis en commun"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 40
tags: [double-comptage, parite, graphe, amities, raisonnement-par-labsurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe B, « Combinatoire : Double comptage » (Noé)"
  reference: "Poly-2025-compresse.pdf, Groupe B, « Combinatoire : Double comptage », exercice 11, p. 244"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Dans un village, le nombre d'habitants est **pair**, et chaque habitant a un nombre **pair** d'amis. On convient que personne n'est ami avec soi-même et que l'amitié est réciproque : si $x$ est ami avec $y$, alors $y$ est ami avec $x$. Avoir zéro ami est autorisé, et zéro est un nombre pair.

Rémi est un habitant du village. Montrer qu'il existe un autre habitant qui a un nombre **pair** d'amis en commun avec Rémi.

## Hints

1. Sépare les autres habitants en deux groupes : $A$, les amis de Rémi, et $B$, ceux qui ne sont pas amis avec Rémi (Rémi lui-même n'est ni dans $A$ ni dans $B$).
2. Que vaut la parité de $|A|$ ? Et celle de $|B|$ ? Pour $|B|$, sers-toi du nombre total d'habitants, sans oublier de retirer Rémi.
3. « Amis en commun avec Rémi » veut dire « amis qui sont dans $A$ ». Raisonne par l'absurde : tous les habitants autres que Rémi ont un nombre **impair** d'amis dans $A$.
4. Pour un habitant $x$ de $A$, décompose ses amis en trois morceaux : ceux de $A$, ceux de $B$, et Rémi. Attention, Rémi est bien un ami de $x$ ici.
5. Compte de deux façons le nombre de liens d'amitié entre $A$ et $B$.

## Solution

Partageons les habitants autres que Rémi en deux groupes :

- $A$ = les amis de Rémi ;
- $B$ = les habitants qui ne sont pas amis avec Rémi, Rémi lui-même exclu.

### Les tailles de $A$ et de $B$

Le nombre $|A|$ est le nombre d'amis de Rémi, donc **pair** par hypothèse.

Le nombre total d'habitants est $|A| + |B| + 1$, en comptant Rémi. Ce total est pair, donc
$$|B| = (\text{total}) - |A| - 1 = \text{pair} - \text{pair} - 1 ,$$
qui est **impair**.

### L'hypothèse absurde

Pour un habitant $x$ différent de Rémi, ses amis communs avec Rémi sont exactement ses amis qui appartiennent à $A$. Supposons par l'absurde qu'aucun habitant autre que Rémi n'a un nombre pair d'amis en commun avec Rémi. Autrement dit :

> pour tout $x \neq$ Rémi, le nombre d'amis de $x$ situés dans $A$ est **impair**.

### Ce que cela impose aux habitants de $A$

Soit $x$ un habitant de $A$. Ses amis se répartissent en trois catégories : ceux qui sont dans $A$, ceux qui sont dans $B$, et Rémi. Et Rémi est bien un ami de $x$, précisément parce que $x \in A$. Donc
$$\underbrace{(\text{nombre total d'amis de } x)}_{\text{pair}} = \underbrace{(\text{amis de } x \text{ dans } A)}_{\text{impair}} + (\text{amis de } x \text{ dans } B) + 1 .$$

En isolant le terme du milieu :
$$(\text{amis de } x \text{ dans } B) = \text{pair} - \text{impair} - 1 = \text{pair} .$$

Donc **chaque habitant de $A$ a un nombre pair d'amis dans $B$**.

### Ce que cela impose aux habitants de $B$

Soit $y$ un habitant de $B$. L'hypothèse absurde dit directement que le nombre d'amis de $y$ dans $A$ est **impair**.

### Le double comptage

Comptons le nombre $L$ de liens d'amitié entre un habitant de $A$ et un habitant de $B$.

**En parcourant $A$ :** chaque habitant de $A$ apporte un nombre pair de tels liens, donc $L$ est une somme de nombres pairs, donc $L$ est **pair**.

**En parcourant $B$ :** chaque habitant de $B$ apporte un nombre impair de tels liens, et il y a $|B|$ habitants dans $B$ avec $|B|$ impair. Une somme d'un nombre impair de termes impairs est impaire, donc $L$ est **impair**.

### La contradiction

$L$ ne peut pas être à la fois pair et impair. L'hypothèse absurde est donc fausse.

### Conclusion

Il existe bien un habitant autre que Rémi ayant un nombre pair d'amis en commun avec Rémi.

### Le point délicat

Tout repose sur le « $+1$ » : quand $x$ est un ami de Rémi, Rémi compte parmi les amis de $x$, et il n'est ni dans $A$ ni dans $B$. C'est ce $+1$ qui fait basculer la parité et qui sépare le cas de $A$ de celui de $B$. Sans lui, les deux comptages donneraient la même parité et il n'y aurait aucune contradiction.

## Going further

1. Où l'hypothèse « le nombre d'habitants est pair » a-t-elle servi ? Et l'hypothèse « chaque habitant a un nombre pair d'amis » ?
2. Construire un village de $5$ habitants, chacun ayant un nombre pair d'amis, dans lequel un habitant n'a d'amis communs en nombre pair avec personne d'autre. Cela montre que l'hypothèse sur la parité du nombre d'habitants est indispensable.
3. Un village compte un nombre pair d'habitants et chacun a un nombre pair d'amis. Montrer qu'il y a un nombre pair de liens d'amitié au total.
