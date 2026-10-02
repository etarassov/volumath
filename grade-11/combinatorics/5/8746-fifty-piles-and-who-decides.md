---
id: "8746"
title: "Cinquante tas, et c'est l'adversaire qui décide"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 60
tags: [strategie-gagnante, appariement, moyenne, parite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024"
  reference: "poly_valbonne_2024.pdf, groupe A, « Jeux à stratégie gagnante » (Benoît et Gabriel), exercice 15, d'après May Olympiad 2023, problème 2"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

Sur une table sont posés $50$ tas de pièces : un tas de $1$ pièce, un tas de $2$ pièces, un tas
de $3$ pièces, et ainsi de suite jusqu'à un tas de $50$ pièces.

Aurélien et Quentin jouent au jeu suivant. Chacun à son tour, en commençant par Aurélien, le
joueur dont c'est le tour **désigne** un tas encore posé sur la table. C'est alors **son
adversaire** qui décide lequel des deux joueurs reçoit ce tas. Le tas quitte la table.

On continue ainsi jusqu'à ce que l'un des deux joueurs possède $25$ tas. À ce moment-là, l'autre
joueur prend d'un seul coup tous les tas encore sur la table, et la partie s'arrête.

Celui qui possède le plus de pièces a gagné.

Montrer que Quentin, le second joueur, a une stratégie gagnante.

## Hints

1. Remarque d'abord que la partie se termine toujours avec $25$ tas pour chacun. Pourquoi ?
2. Combien de pièces y a-t-il en tout ? Quelle serait la taille moyenne d'un tas ?
3. Deux tas dont les tailles sont $k$ et $51 - k$ forment une paire dont le total vaut toujours
   $51$, c'est-à-dire deux fois la taille moyenne. Regroupe les $50$ tas en $25$ paires de ce
   type.
4. Quentin ne cherche pas à prendre les plus gros tas : il cherche à ce que chaque paire lui
   soit au moins aussi favorable qu'un partage exact. Quelle règle simple peut-il suivre quand
   Aurélien désigne un tas ?
5. La règle : si le tas désigné par Aurélien a plus de $\text{25,5}$ pièces, Quentin le prend
   pour lui ; sinon il le donne à Aurélien. Et à son propre tour, Quentin désigne le tas
   partenaire.
6. Vérifie que ce tas partenaire est toujours encore sur la table. Puis montre que, dans une
   paire partagée entre les deux joueurs, c'est toujours Quentin qui a le gros tas.
7. Dernière marche : Quentin finit avec $25$ tas, un nombre **impair**. Qu'est-ce que cela
   impose sur le nombre de paires partagées ?

## Solution

**Étape 1 : les deux joueurs finissent avec 25 tas chacun.**

Il y a $50$ tas. Dès que l'un des joueurs en possède $25$, l'autre ramasse ceux qui restent,
c'est-à-dire $50 - 25 = 25$ tas. Chacun termine donc avec exactement $25$ tas.

Le nombre total de pièces vaut
$$1 + 2 + \cdots + 50 = \frac{50 \times 51}{2} = 1275 .$$
La taille moyenne d'un tas est donc $\dfrac{1275}{50} = \text{25,5}$ pièces.

**Étape 2 : l'appariement.**

À chaque taille $k$ entre $1$ et $50$, associons la taille $k^{*} = 51 - k$. On a
$$k + k^{*} = 51 ,$$
soit exactement deux fois la moyenne. Comme $51$ est impair, jamais $k = k^{*}$, donc on obtient
$25$ paires de tas, toutes distinctes :
$$\{1, 50\}, \quad \{2, 49\}, \quad \{3, 48\}, \quad \ldots, \quad \{25, 26\} .$$

Dans chaque paire il y a un **gros** tas, celui de taille au moins $26$, et un **petit**, celui
de taille au plus $25$.

**Étape 3 : la stratégie de Quentin.**

Elle tient en deux règles.

- **Quand Aurélien désigne un tas de taille $k$** : si $k \geq 26$, Quentin le prend pour
  lui-même ; si $k \leq 25$, Quentin le donne à Aurélien. Autrement dit, *Quentin s'attribue le
  tas s'il est gros, et s'en débarrasse s'il est petit.*
- **Quand c'est à Quentin de désigner** : il désigne le tas partenaire, celui de taille
  $51 - k$, où $k$ est le tas que Aurélien vient de désigner.

**Étape 4 : la stratégie est toujours jouable.**

Les tas quittent la table par paires : Aurélien en désigne un, ce qui ouvre une paire, et
Quentin désigne aussitôt l'autre, ce qui la referme. Donc, juste avant chaque désignation
d'Aurélien, chaque paire est soit entièrement sur la table, soit entièrement distribuée.

Aurélien doit désigner un tas encore présent, donc un tas d'une paire intacte. Le partenaire de
ce tas est encore sur la table, et Quentin peut le désigner. La règle est donc toujours
applicable.

(Si la partie s'arrête entre les deux, parce qu'un joueur vient d'atteindre $25$ tas, Quentin
n'a tout simplement pas à jouer.)

**Étape 5 : dans une paire partagée, Quentin a le gros tas.**

Disons qu'une paire est **partagée** quand l'un de ses deux tas finit chez Quentin et l'autre
chez Aurélien. Montrons que dans ce cas, c'est Quentin qui reçoit le gros.

Suivons une paire $\{k, k^{*}\}$ ouverte par Aurélien.

- Si Aurélien désigne le **gros** tas, Quentin se l'attribue. La paire n'est partagée que si le
  petit tas va à Aurélien : Quentin a bien le gros.
- Si Aurélien désigne le **petit** tas, Quentin le donne à Aurélien. La paire n'est partagée que
  si le gros tas va à Quentin : Quentin a encore le gros.

Reste le cas où la partie s'arrête juste après la décision de Quentin, avant qu'il ait désigné
le partenaire. Le tas partenaire part alors dans le lot ramassé par le joueur qui n'a pas
atteint $25$ tas.

- Si Quentin vient de s'attribuer un gros tas, c'est lui qui peut avoir atteint $25$ tas ; sinon
  la partie continue. S'il s'arrête, c'est Aurélien qui ramasse le reste, donc le petit tas
  partenaire : Quentin a le gros.
- Si Quentin vient de donner un petit tas à Aurélien et que la partie s'arrête, c'est Aurélien
  qui a atteint $25$ tas, donc Quentin qui ramasse le reste, et en particulier le gros tas
  partenaire : Quentin a encore le gros.

Enfin, les paires jamais ouvertes partent entières dans le lot final : elles ne sont pas
partagées.

Dans tous les cas, **une paire partagée donne le gros tas à Quentin**.

**Étape 6 : il y a au moins une paire partagée.**

Notons $q$ le nombre de paires dont les deux tas finissent chez Quentin, et $s$ le nombre de
paires partagées. Quentin possède alors
$$2q + s = 25 \quad \text{tas} .$$

Comme $25$ est impair et $2q$ est pair, $s$ est impair. En particulier $s \geq 1$.

**Étape 7 : compter les pièces de Quentin.**

Séparons les tas de Quentin selon leur paire.

- Une paire entièrement à lui lui rapporte $k + k^{*} = 51$ pièces, c'est-à-dire exactement
  $2 \times \text{25,5}$.
- Une paire partagée lui rapporte le gros tas, donc au moins $26$ pièces, et en tout cas
  strictement plus que $\text{25,5}$.

Le total de Quentin vérifie donc
$$\text{total de Quentin} \;>\; 51\,q + \text{25,5}\,s = \text{25,5} \times (2q + s) = \text{25,5} \times 25 = \text{637,5} .$$

L'inégalité est stricte parce que $s \geq 1$ : il y a au moins une paire partagée, et elle
rapporte strictement plus que $\text{25,5}$.

Comme le nombre de pièces de Quentin est un entier, il vaut au moins $638$. Aurélien a donc au
plus
$$1275 - 638 = 637$$
pièces.

**Conclusion.** Quentin a strictement plus de pièces qu'Aurélien, quelles que soient les
décisions de celui-ci. Quentin a donc une stratégie gagnante.

## Going further

1. À l'étape 7, l'inégalité est strictement positive grâce à $s \geq 1$, qui vient lui-même de
   la parité de $25$. Que deviendrait l'argument avec $2n$ tas de $1$ à $2n$ pièces et un arrêt à
   $n$ tas, pour $n$ pair ? Le raisonnement donne-t-il encore la victoire à Quentin ?
2. Aurélien peut-il faire en sorte que Quentin gagne de très peu ? Essaie de décrire une façon de
   jouer d'Aurélien qui rende $s$ égal à $1$.
3. Pourquoi Quentin n'a-t-il pas intérêt à jouer « gloutonnement », c'est-à-dire à toujours
   s'attribuer le tas désigné quand il est gros et à désigner ensuite le plus gros tas restant ?
   Cherche ce qu'Aurélien ferait alors du tas désigné.
