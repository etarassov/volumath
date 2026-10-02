---
id: "8744"
title: "Des 0 et des 1 sur les sommets d'un polygone"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [strategie-gagnante, appariement, polygone, divisibilite-par-trois]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024"
  reference: "poly_valbonne_2024.pdf, groupe A, « Jeux à stratégie gagnante » (Benoît et Gabriel), exercice 8, repris du TD 2023"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

Soit $n$ un entier **pair** avec $n \geq 4$. On dessine un polygone régulier à $n$ sommets. Au
départ, tous les sommets sont vides.

Noé et Marc jouent au jeu suivant. Chacun à son tour, en commençant par Noé, un joueur écrit
un $0$ ou un $1$ sur un sommet encore vide. Il a le droit de choisir le sommet **et** le chiffre.

Noé gagne si, à un moment de la partie, il existe trois sommets **consécutifs** du polygone,
tous les trois remplis, dont la somme des trois nombres inscrits est un multiple de $3$.

Marc gagne s'il empêche cela jusqu'à la fin de la partie.

Lequel des deux joueurs a une stratégie gagnante ?

## Hints

1. Les nombres écrits valent $0$ ou $1$. Quelles valeurs la somme de trois d'entre eux peut-elle
   prendre ? Lesquelles sont des multiples de $3$ ?
2. Traduis la condition de victoire de Noé sans parler de multiple de $3$ : il gagne exactement
   quand trois sommets consécutifs portent **le même** chiffre.
3. Marc doit donc s'arranger pour que, parmi trois sommets consécutifs, il y en ait toujours
   deux qui portent des chiffres différents.
4. Marc joue en second : il peut donc répondre à chaque coup de Noé. Essaie de regrouper les
   $n$ sommets deux par deux, en couples de sommets voisins, et de faire de chaque couple un
   couple « $0$ et $1$ ».
5. Vérifie deux choses : que Marc peut toujours appliquer sa réponse, et que trois sommets
   consécutifs contiennent forcément un couple entier.

## Solution

C'est **Marc**, le second joueur, qui a une stratégie gagnante.

**Étape 1 : reformuler la condition de victoire de Noé.**

Les trois nombres inscrits valent chacun $0$ ou $1$, donc leur somme vaut $0$, $1$, $2$ ou $3$.
Parmi ces quatre valeurs, seules $0$ et $3$ sont des multiples de $3$.

La somme vaut $0$ exactement quand les trois chiffres valent $0$, et elle vaut $3$ exactement
quand les trois valent $1$. Autrement dit :

> Noé gagne si et seulement si trois sommets consécutifs portent tous les trois **le même**
> chiffre.

Pour gagner, il suffit donc à Marc de garantir que, dans tout groupe de trois sommets
consécutifs remplis, deux au moins portent des chiffres différents.

**Étape 2 : la stratégie de Marc.**

Numérotons les sommets $1, 2, \ldots, n$ en tournant autour du polygone. Comme $n$ est pair, on
peut les regrouper en couples de sommets voisins :
$$\{1, 2\}, \quad \{3, 4\}, \quad \{5, 6\}, \quad \ldots, \quad \{n-1, n\} .$$
Chaque sommet appartient à exactement un couple, et les deux sommets d'un couple sont voisins
sur le polygone.

La stratégie de Marc tient en une phrase :

> **quand Noé écrit le chiffre $x$ sur un sommet, Marc écrit le chiffre $1 - x$ sur l'autre
> sommet du même couple.**

Ainsi, si Noé écrit $0$, Marc répond $1$, et si Noé écrit $1$, Marc répond $0$.

**Étape 3 : Marc peut toujours jouer ce coup.**

Il faut vérifier que le sommet visé par Marc est bien libre.

Au début, tous les couples sont vides. Ensuite, chaque coup de Noé ouvre un couple vide, et le
coup de Marc qui suit le referme. Donc, juste avant chaque coup de Noé, **chaque couple est
soit entièrement vide, soit entièrement rempli**.

Quand Noé écrit sur un sommet, ce sommet était libre, donc son couple était vide, donc l'autre
sommet du couple est libre lui aussi. Marc peut donc toujours jouer sa réponse.

**Étape 4 : trois sommets consécutifs contiennent toujours un couple entier.**

Prenons trois sommets consécutifs $a$, $a+1$, $a+2$ (les numéros étant lus modulo $n$).

- Si $a$ est impair, alors $\{a, a+1\}$ est l'un des couples de la liste, et il est contenu dans
  nos trois sommets.
- Si $a$ est pair, alors $a+1$ est impair, donc $\{a+1, a+2\}$ est l'un des couples de la liste,
  et il est lui aussi contenu dans nos trois sommets.

Dans les deux cas, les trois sommets consécutifs contiennent un couple complet. Le fait que $n$
soit pair est ce qui rend ce découpage cohérent une fois le tour du polygone bouclé.

**Étape 5 : conclusion.**

Supposons que trois sommets consécutifs soient tous remplis. D'après l'étape 4, deux d'entre eux
forment un couple de la liste. Ce couple a été rempli par un coup de Noé suivi de la réponse de
Marc, donc il porte un $x$ et un $1 - x$ : ces deux chiffres sont différents.

Les trois sommets ne portent donc pas tous le même chiffre, et d'après l'étape 1 leur somme
n'est pas un multiple de $3$.

Cela vaut à tout moment de la partie, y compris juste après un coup de Noé. Noé ne gagne donc
jamais : **Marc a une stratégie gagnante**.

## Going further

1. Pourquoi la stratégie de Marc s'effondre-t-elle si $n$ est impair ? Repère précisément l'étape
   de la démonstration qui ne fonctionne plus.
2. Marc aurait-il pu apparier les sommets diamétralement opposés, c'est-à-dire
   $\{1, 1 + n/2\}$, $\{2, 2 + n/2\}$, et ainsi de suite ? Teste cet appariement à l'étape 4
   avec $n = 8$.
3. On change la règle : Noé gagne maintenant si **quatre** sommets consécutifs portent des
   nombres de somme multiple de $4$. La stratégie de Marc marche-t-elle encore ? Et si oui,
   pourquoi ?
