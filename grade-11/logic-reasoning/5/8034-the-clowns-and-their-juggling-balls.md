---
id: "8034"
title: "Les clowns et leurs balles de jonglage"
grade: 11
theme: logic-reasoning
difficulty: 5
duration_min: 50
tags: [monovariant, invariant, parite, cercle, processus]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017"
  reference: "stage_ete_2017.pdf, test de fin de parcours du jeudi 24 août, groupe D, exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

$n$ clowns sont placés en cercle et jonglent, chacun avec un certain nombre de balles.

Toutes les minutes, le directeur du cirque donne un signal. Juste avant le signal, tout clown
qui a un nombre impair de balles en sort une de sa poche, de sorte que tout le monde ait un
nombre pair de balles. Puis, au signal, chaque clown envoie la moitié de ses balles à son
voisin de droite et garde l'autre moitié.

Montrer qu'au bout d'un certain temps, tous les clowns auront le même nombre de balles.

## Hints

1. Note $M$ le plus grand nombre de balles détenu par un clown, et $m$ le plus petit. Que
   deviennent ces deux nombres après un signal ?
2. Montre que $m$ ne diminue jamais, et que $M$ ne dépasse jamais une certaine valeur fixée
   dès le début.
3. Suppose $m < M$. Trouve un clown qui a exactement $m$ balles et dont le voisin de gauche en
   a davantage. Combien en aura-t-il après le signal ?
4. Compte le nombre de clowns qui ont exactement $m$ balles. Peut-il augmenter ? Que se
   passe-t-il quand il tombe à zéro ?

## Solution

**Mise en place.** Décrivons une minute. Si un clown détient $c$ balles, il en détient $c'$
juste après l'éventuel ajout de la balle de poche, où

$$c' = c \text{ si } c \text{ est pair}, \qquad c' = c + 1 \text{ si } c \text{ est impair}.$$

Dans les deux cas, $c'$ est pair et $c \leqslant c' \leqslant c + 1$.

Ensuite, le clown garde $c'/2$ balles et reçoit la moitié des balles de son voisin de gauche.
Si $g'$ désigne le nombre de balles de ce voisin après l'ajout de poche, le clown se retrouve
donc avec

$$\frac{c' + g'}{2} \qquad \text{balles},$$

et ce nombre est bien un entier, puisque $c'$ et $g'$ sont pairs.

Notons $m$ le plus petit nombre de balles détenu à un instant donné, et $M$ le plus grand.

### Le minimum ne diminue jamais

Tous les clowns ont au moins $m$ balles, donc après l'ajout de poche ils en ont au moins $m$
aussi. Chaque nouveau nombre de balles vaut $\dfrac{c' + g'}{2} \geqslant \dfrac{m + m}{2} = m$.

Donc après le signal, **personne n'a moins de $m$ balles**. Le minimum ne peut que croître.

### Le maximum reste borné

Posons $B = M_0$ si le maximum initial $M_0$ est pair, et $B = M_0 + 1$ s'il est impair. Ce
nombre $B$ est pair et tout le monde a au plus $B$ balles au départ.

Montrons que cette propriété se conserve. Supposons qu'à un instant donné tous les clowns aient
au plus $B$ balles. Après l'ajout de poche, un clown qui en avait $c \leqslant B$ en a
$c' \leqslant B$ : en effet si $c$ est pair alors $c' = c \leqslant B$, et si $c$ est impair
alors $c < B$ (car $B$ est pair), donc $c \leqslant B - 1$ et $c' \leqslant B$.

Chaque nouveau nombre vaut alors $\dfrac{c' + g'}{2} \leqslant \dfrac{B + B}{2} = B$.

Donc **personne n'aura jamais plus de $B$ balles**.

### Tant que tout le monde n'est pas à égalité, le minimum finit par monter

Supposons $m < M$ à un instant donné. Les clowns sont en cercle, certains ont exactement $m$
balles et d'autres en ont plus ; en parcourant le cercle, on trouve donc un clown $c$ qui a
exactement $m$ balles et dont le **voisin de gauche** en a strictement plus, donc au moins
$m + 1$.

Après l'ajout de poche, ce clown en a $c' \geqslant m$ et son voisin $g' \geqslant m+1$. Après
le signal, il se retrouve avec

$$\frac{c' + g'}{2} \geqslant \frac{m + (m+1)}{2} = m + \frac{1}{2},$$

et comme ce nombre est un entier, il vaut au moins $m + 1$ : **ce clown quitte le minimum**.

Par ailleurs, aucun clown ne peut rejoindre le minimum : un clown qui avait $c \geqslant m+1$
balles se retrouve avec $\dfrac{c' + g'}{2} \geqslant \dfrac{(m+1) + m}{2} > m$, donc au moins
$m+1$ lui aussi.

Notons $t$ le nombre de clowns ayant exactement $m$ balles. On vient de voir qu'après le
signal, au moins un de ces $t$ clowns en a désormais plus de $m$, et qu'aucun autre ne vient
les remplacer. Donc, tant que le minimum reste égal à $m$, le nombre $t$ **diminue
strictement** à chaque signal.

Comme $t$ vaut au plus $n$ et ne peut pas devenir nul en gardant le même minimum (si personne
n'a $m$ balles, c'est que le minimum a augmenté), le minimum augmente d'au moins $1$ au bout
d'au plus $n$ signaux.

### La conclusion

Le minimum ne diminue jamais, il est toujours au plus égal à $B$, et tant que tout le monde
n'a pas le même nombre de balles il augmente d'au moins $1$ tous les $n$ signaux au plus.

Il ne peut donc augmenter qu'un nombre fini de fois : au plus $B - m_0$ fois, où $m_0$ est le
minimum de départ. Après au plus $n\,(B - m_0)$ signaux, il n'est plus possible d'avoir
$m < M$.

**Donc au bout d'un temps fini, $m = M$ : tous les clowns ont le même nombre de balles.**

## Going further

Une fois l'égalité atteinte avec $v$ balles chacun, la situation ne bouge presque plus. Si $v$
est pair, chacun donne $v/2$ et reçoit $v/2$ : tout le monde reste à $v$ pour toujours. Si $v$
est impair, tout le monde sort une balle de sa poche et passe à $v+1$, qui est pair, puis plus
rien ne change.

L'outil employé s'appelle un **monovariant** : une quantité qui ne peut évoluer que dans un
sens, et qui est bornée. Ici il y en a deux à la fois, le minimum qui monte et le nombre de
clowns au minimum qui descend, emboîtés l'un dans l'autre. C'est la façon la plus courante de
démontrer qu'un processus s'arrête, alors même qu'on serait bien incapable de dire au bout de
combien de temps ni sur quelle valeur.
