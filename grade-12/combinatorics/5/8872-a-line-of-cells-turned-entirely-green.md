---
id: "8872"
title: "Une ligne de cases entièrement verte"
grade: 12
theme: combinatorics
difficulty: 5
duration_min: 50
tags: [recurrence forte, parite, denombrement, invariant, cases]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe B, « Combinatoire : Grilles » (Oscar et Paul LL)"
  reference: "Poly-2025-compresse.pdf, Groupe B, « Combinatoire : Grilles », exercice 7, p. 278 et 282"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Soit $n \geqslant 1$. On dispose d'une ligne de $n$ cases, chacune coloriée en **blanc** ou en **noir**.

Autant de fois qu'on le souhaite, on peut effectuer l'opération suivante : choisir une case **blanche**, la colorier en **vert**, et changer la couleur de ses deux cases voisines, avec la règle
$$\text{blanc} \longleftrightarrow \text{noir}, \qquad \text{vert} \longrightarrow \text{vert} .$$

Une case des deux extrémités n'a qu'une seule voisine, et une case déjà verte ne change plus jamais de couleur.

Parmi les $2^n$ lignes de départ possibles, combien peut-on rendre entièrement vertes ?

## Hints

1. Fais les cas $n = 1$, $n = 2$ et $n = 3$ à la main. Tu devrais deviner un critère portant sur le nombre de cases blanches.
2. Une case verte ne change plus jamais. Que devient la ligne, du point de vue des opérations futures, une fois qu'une case est verte ?
3. Cette remarque coupe le problème en deux problèmes plus petits et **indépendants**. C'est l'amorce d'une récurrence forte.
4. Pour montrer que le critère suffit, choisis la case blanche **la plus à gauche** et opère dessus. Combien de cases blanches se retrouvent à gauche ? Et à droite ?
5. Pour la réciproque, regarde la **première** opération effectuée et applique l'hypothèse de récurrence aux deux morceaux.
6. Une fois le critère établi, il reste un simple dénombrement : combien de mots de $n$ lettres sur $\{$blanc, noir$\}$ ont un nombre impair de blancs ?

## Solution

La réponse est
$$\boxed{2^{n-1}} .$$

On va montrer le critère suivant.

> **Critère.** Une ligne de $n \geqslant 1$ cases peut être rendue entièrement verte si et seulement si elle contient au départ un nombre **impair** de cases blanches.

### L'observation qui coupe le problème en deux

Quand une case devient verte, elle ne change plus jamais de couleur. Mieux : elle isole complètement ce qui est à sa gauche de ce qui est à sa droite. En effet, une opération faite sur une case située à gauche n'atteint que des cases à gauche, ou bien la case verte elle-même, qui reste verte.

Donc, dès qu'on a colorié la case numéro $i$ en vert, la suite du jeu se joue séparément sur les cases $1, \dots, i-1$ et sur les cases $i+1, \dots, n$, sans aucune interaction. Pour finir tout vert, il faut et il suffit de finir tout vert dans chacun des deux morceaux.

### La récurrence

On démontre le critère par récurrence forte sur $n$. Notons $w$ le nombre de cases blanches de la ligne de départ.

**Initialisation, $n = 1$.** Une seule case. Si elle est blanche, on l'opère et elle devient verte : $w = 1$, impair. Si elle est noire, aucune opération n'est possible et on est bloqué : $w = 0$, pair. Le critère est vrai.

**Hérédité.** Soit $n \geqslant 2$ ; supposons le critère vrai pour toutes les longueurs de $1$ à $n-1$.

#### Si $w$ est impair, on peut finir tout vert

Comme $w \geqslant 1$, il existe une case blanche. Prenons la plus à gauche, en position $i$. Toutes les cases $1, \dots, i-1$ sont donc noires. Opérons sur la case $i$.

*Le morceau de gauche*, les cases $1, \dots, i-1$. Si $i = 1$, il est vide et il n'y a rien à faire. Sinon, il était entièrement noir, et l'opération a changé la couleur de la case $i-1$, qui devient blanche : ce morceau contient maintenant exactement **une** case blanche. C'est impair, et sa longueur $i-1$ est strictement plus petite que $n$, donc par hypothèse de récurrence on peut le rendre entièrement vert.

*Le morceau de droite*, les cases $i+1, \dots, n$. Si $i = n$, il est vide. Sinon, avant l'opération, il contenait $w - 1$ cases blanches (la case $i$ était blanche, et il n'y en avait aucune à sa gauche), donc un nombre **pair**. L'opération a changé la couleur de la seule case $i+1$, ce qui fait varier ce compte de $+1$ ou de $-1$ : le morceau contient maintenant un nombre **impair** de cases blanches. Sa longueur $n-i$ est strictement plus petite que $n$, donc par hypothèse de récurrence on peut le rendre entièrement vert.

En traitant les deux morceaux, toute la ligne devient verte.

#### Si on peut finir tout vert, alors $w$ est impair

Supposons qu'une suite d'opérations rende la ligne entièrement verte, et regardons la **première** d'entre elles, effectuée sur une case $i$, nécessairement blanche. Notons $w_G$ et $w_D$ le nombre de cases blanches situées respectivement à gauche et à droite de la case $i$ **avant** cette opération, de sorte que
$$w = w_G + 1 + w_D .$$

Après l'opération, la case $i$ est verte, donc la ligne se sépare en deux morceaux indépendants, et chacun doit devenir entièrement vert.

*Morceau de gauche.* S'il est vide, alors $i = 1$ et $w_G = 0$, un nombre pair. Sinon, il est non vide et de longueur $< n$ : par hypothèse de récurrence, il doit contenir un nombre impair de cases blanches **après** l'opération. Or l'opération a changé la couleur de la seule case $i-1$, donc ce compte vaut $w_G \pm 1$. Un nombre impair égal à $w_G \pm 1$ force $w_G$ à être **pair**.

*Morceau de droite.* Le même raisonnement, appliqué à la case $i+1$, donne que $w_D$ est **pair**.

Donc $w = \text{pair} + 1 + \text{pair}$ est **impair**.

Le critère est démontré.

### Le dénombrement

Il reste à compter les lignes de $n$ cases ayant un nombre impair de cases blanches.

Choisissons librement les couleurs des $n-1$ premières cases : cela fait $2^{n-1}$ possibilités. Pour chacune, la couleur de la dernière case est alors **forcée** : blanche si les $n-1$ premières contiennent un nombre pair de blanches, noire sinon. Cela donne exactement un prolongement valable par choix initial.

Il y a donc $2^{n-1}$ lignes convenables.

### Conclusion

Parmi les $2^n$ lignes de départ, exactement $2^{n-1}$, c'est-à-dire la moitié, peuvent être rendues entièrement vertes.

## Going further

1. Vérifier le résultat à la main pour $n = 3$ : lister les $8$ lignes et dire lesquelles marchent.
2. Que devient la réponse si les $n$ cases sont disposées en **cercle**, chaque case ayant alors deux voisines ?
3. Dans le cas où c'est possible, combien d'opérations faut-il exactement ? (Compter les cases qui deviennent vertes.)
