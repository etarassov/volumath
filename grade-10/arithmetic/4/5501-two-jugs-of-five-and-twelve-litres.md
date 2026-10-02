---
id: "5501"
title: "Deux bidons de 5 et 12 litres"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [bidons, pgcd, restes, invariant, divisibilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), The Jug Band, Elgin Johnston"
  reference: "EJohnstonThe-Jug-Band.pdf, « After the Jug Band », problèmes 1, 2, 4 et 8. Le corrigé du problème 2 est fautif : il parle de bidons de « 15 et 18 » et d'un maximum de 33 litres, alors que l'énoncé donne 15 et 36, donc 51 litres. La version publiée ici suit l'énoncé."
  url: "https://mathcircles.org/activity/the-jug-band/"
  original_language: "en"
  local_copy: "sources/originals/namc/EJohnstonThe-Jug-Band.pdf"
---

## Statement

Tu disposes d'un robinet, d'un évier, et de deux bidons sans aucune graduation : le petit contient exactement $5$ litres quand il est plein, le grand exactement $12$ litres.

Les seuls gestes autorisés sont :

- remplir complètement un bidon au robinet ;
- vider complètement un bidon dans l'évier ;
- verser le contenu d'un bidon dans l'autre, jusqu'à ce que le premier soit vide ou que le second soit plein.

**a)** Comment obtenir exactement $1$ litre d'eau ?

**b)** Montrer que l'on peut obtenir n'importe quel nombre entier de litres entre $0$ et $17$.

**c)** On remplace les deux bidons par un bidon de $15$ litres et un bidon de $36$ litres. Quelles quantités entières de litres peut-on obtenir ? Et pourquoi pas les autres ?

## Hints

1. Pour la question a), essaie de remplir plusieurs fois le petit bidon et de verser chaque fois dans le grand, en vidant le grand dès qu'il est plein. Note à chaque étape ce qu'il y a dans chaque bidon.
2. En répétant ce geste, le grand bidon contient successivement $5$, puis $10$, puis (après un vidage) $3$, puis $8$, puis $1$... Reconnais-tu ces nombres ? Ce sont les restes d'une division.
3. Après $k$ remplissages du petit bidon, le grand contient le reste de la division de $5k$ par $12$. Combien de restes différents cela fait-il quand $k$ va de $0$ à $11$ ?
4. Pour montrer que deux de ces restes ne peuvent pas être égaux, suppose le contraire : $5j$ et $5k$ auraient le même reste, donc $5(j-k)$ serait un multiple de $12$. Regarde le chiffre des unités.
5. Pour la question b), tu sais atteindre $0$ à $11$ litres, et $12$ est facile. Pour $13$ à $17$, garde quelques litres dans le petit bidon, puis remplis le grand sans y toucher.
6. Pour la question c), fais la liste de tout ce qui peut apparaître dans un bidon : $0$, $15$, $36$, des sommes et des différences de ces nombres. Que remarques-tu sur la divisibilité par $3$ ?

## Solution

**a) Obtenir 1 litre.**

On note $(p\,;\,g)$ le contenu du petit et du grand bidon.

| geste | petit | grand |
|---|---|---|
| départ | $0$ | $0$ |
| remplir le petit | $5$ | $0$ |
| verser dans le grand | $0$ | $5$ |
| remplir le petit | $5$ | $5$ |
| verser dans le grand | $0$ | $10$ |
| remplir le petit | $5$ | $10$ |
| verser dans le grand (il ne prend que $2$) | $3$ | $12$ |
| vider le grand | $3$ | $0$ |
| verser dans le grand | $0$ | $3$ |
| remplir le petit | $5$ | $3$ |
| verser dans le grand | $0$ | $8$ |
| remplir le petit | $5$ | $8$ |
| verser dans le grand (il ne prend que $4$) | $1$ | $12$ |

Il reste exactement $1$ litre dans le petit bidon.

**b) Toutes les quantités de 0 à 17.**

*Le geste répété.* Recommençons le même mouvement, encore et encore : remplir le petit bidon, le verser dans le grand, et vider le grand dès qu'il est plein. Après chaque tour complet le petit bidon est vide, et le grand a reçu $5$ litres de plus, dont on a retiré $12$ litres si cela débordait. Donc si le grand contenait $b$ litres, il en contient maintenant $b + 5$, ou $b + 5 - 12$ si $b + 5$ dépasse $12$.

Autrement dit, après $k$ tours, le grand bidon contient **le reste de la division de $5k$ par $12$**.

*Ces restes sont tous différents.* Supposons que deux d'entre eux soient égaux, disons pour $k$ et $j$ avec $0 \leqslant k < j \leqslant 11$. Alors $5j - 5k = 5(j-k)$ serait un multiple de $12$. Or $1 \leqslant j - k \leqslant 11$, donc
$$5 \leqslant 5(j-k) \leqslant 55 .$$
Les multiples de $12$ dans cet intervalle sont $12$, $24$, $36$ et $48$. Mais $5(j-k)$ est un multiple de $5$ : son chiffre des unités est $0$ ou $5$, alors que ces quatre nombres se terminent par $2$, $4$, $6$, $8$. C'est impossible.

Les douze restes obtenus pour $k = 0, 1, \ldots, 11$ sont donc douze nombres différents, tous compris entre $0$ et $11$ : ce sont exactement les nombres $0, 1, 2, \ldots, 11$. En pratique, ils apparaissent dans cet ordre :
$$0,\ 5,\ 10,\ 3,\ 8,\ 1,\ 6,\ 11,\ 4,\ 9,\ 2,\ 7 .$$

Toute quantité de $0$ à $11$ litres est donc réalisable.

*Les quantités de 12 à 17.* Pour $12$ litres, il suffit de remplir le grand bidon. Pour $17$ litres, on remplit les deux.

Pour $13$, $14$, $15$ et $16$ litres, il faut respectivement $1$, $2$, $3$ et $4$ litres dans le petit bidon, puis remplir le grand sans toucher au petit. Or le même geste, avec les rôles échangés (remplir le grand, verser dans le petit, vider le petit dès qu'il est plein), laisse dans le petit bidon le reste de la division de $12k$ par $5$ :
$$k = 1 : 2, \qquad k = 2 : 4, \qquad k = 3 : 1, \qquad k = 4 : 3 .$$
On obtient bien $1$, $2$, $3$ et $4$ litres dans le petit bidon.

**Conclusion :** toutes les quantités entières de $0$ à $17$ litres sont réalisables.

**c) Les bidons de 15 et 36 litres.**

*Ce qui est impossible.* Au départ, les deux bidons contiennent $0$ litre, qui est un multiple de $3$. Regardons ce que fait chaque geste, en supposant que les deux contenus sont des multiples de $3$ :

- remplir un bidon donne $15$ ou $36$, deux multiples de $3$ ;
- vider un bidon donne $0$ ;
- verser un bidon dans l'autre : soit le premier se vide entièrement et le second contient la somme des deux contenus, soit le second devient plein ($15$ ou $36$) et le premier garde la différence entre son contenu et ce qu'il a versé.

Dans tous les cas, on ne fabrique que des sommes et des différences de multiples de $3$ : les deux contenus restent des multiples de $3$. La quantité totale d'eau posée sur la table est donc **toujours un multiple de $3$**, et elle ne dépasse évidemment pas $15 + 36 = 51$ litres.

Aucune quantité comme $1$, $2$, $4$, $50$ litres n'est donc atteignable.

*Ce qui est possible.* Changeons d'unité : appelons « part » une quantité de $3$ litres. Le petit bidon fait $5$ parts, le grand $12$ parts, et les gestes autorisés sont exactement les mêmes. C'est le problème des questions a) et b) ! On sait donc obtenir tout nombre entier de parts entre $0$ et $17$.

**Conclusion :** avec des bidons de $15$ et $36$ litres, on obtient exactement les multiples de $3$ compris entre $0$ et $51$ litres, c'est-à-dire $0$, $3$, $6$, $9$, ..., $48$, $51$, et rien d'autre.

Ce n'est pas un hasard : $\mathrm{PGCD}(5, 12) = 1$ et $\mathrm{PGCD}(15, 36) = 3$.

## Going further

1. Avec deux bidons de $p$ et $q$ litres, devine la règle générale : quelles quantités peut-on obtenir ? (Réponse attendue : les multiples de $\mathrm{PGCD}(p, q)$ compris entre $0$ et $p+q$.)
2. Dans la question a), compte combien de fois on a rempli le petit bidon et combien de fois on a retiré $12$ litres. Tu obtiens l'égalité $5 \times 5 - 12 \times 2 = 1$. Écris de la même façon $3$ comme différence de multiples de $15$ et de $36$.
3. Avec des bidons de $7$ et $17$ litres, combien de gestes faut-il au minimum pour obtenir $1$ litre ?
