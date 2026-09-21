---
id: "7529"
title: "Cinq pirates et cent pièces d'or"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 40
tags: [strategie, recurrence-a-rebours, vote, theorie-des-jeux, raisonnement]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 6 (solution p. 239, résolu par Timothée Defourné). L'erratum publié (stage_ete_2012_errata.pdf) corrige une phrase de l'énoncé en « où l'offre de distribution est acceptée »."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

Cinq pirates doivent se partager $100$ pièces d'or. Ils sont classés par grade, du plus gradé au moins gradé : appelons-les $P_1$, $P_2$, $P_3$, $P_4$ et $P_5$.

La règle est la suivante.

- Le pirate le plus gradé encore en vie propose un partage des pièces.
- Tous les pirates encore en vie, lui compris, votent. Si **plus de la moitié** des votants acceptent, le partage est appliqué et l'histoire s'arrête.
- Sinon, celui qui a proposé est jeté aux requins, et c'est le suivant dans l'ordre des grades qui propose.

On recommence jusqu'à ce qu'un partage soit accepté.

Chaque pirate est un logicien parfait et sait que les autres le sont aussi. Ses priorités, dans cet ordre :

1. rester en vie ;
2. puis obtenir le plus de pièces possible ;
3. puis, à nombre de pièces égal, préférer voir un camarade dévoré.

Quel partage $P_1$ doit-il proposer ?

## Hints

1. Cinq pirates, c'est trop pour commencer. Que se passe-t-il s'il n'en reste que deux, $P_4$ et $P_5$ ?
2. Puis trois, puis quatre. À chaque fois, suppose connu ce qui arriverait s'il y en avait un de moins.
3. Pour convaincre un pirate de voter « oui », il ne suffit pas de lui donner autant que ce qu'il obtiendrait après ta mort : à cause de la priorité numéro 3, il faut lui donner **strictement plus**.
4. Compte bien le nombre de voix nécessaires. « Plus de la moitié » de $5$ votants, c'est $3$ voix. Et de $4$ votants ?
5. Le proposant vote toujours pour lui-même : il lui reste donc peu de voix à acheter, et il peut les acheter au rabais.

## Solution

On raisonne **à rebours**, en partant du plus petit nombre de pirates.

**Deux pirates : $P_4$ et $P_5$.**

$P_4$ propose. Il faut plus de la moitié de $2$ votants, donc au moins $2$ voix : il faut que $P_5$ accepte. Mais si $P_5$ refuse, $P_4$ est dévoré, et $P_5$ reste seul avec les $100$ pièces. $P_5$ refusera donc toujours.

Conclusion : à deux, $P_4$ est condamné, et $P_5$ empoche tout.

**Trois pirates : $P_3$, $P_4$, $P_5$.**

$P_3$ propose. Il faut plus de la moitié de $3$ votants, donc au moins $2$ voix : la sienne, plus une autre.

Que pense $P_4$ ? Si le partage est refusé, $P_3$ meurt et on se retrouve à deux : $P_4$ y est condamné. Comme survivre passe avant tout, $P_4$ accepte **n'importe quel** partage, même à zéro pièce.

$P_3$ propose donc $(100, 0, 0)$ et l'emporte grâce à la voix de $P_4$.

**Quatre pirates : $P_2, P_3, P_4, P_5$.**

$P_2$ propose. Il faut plus de la moitié de $4$ votants, donc au moins $3$ voix : la sienne, plus deux autres.

Si $P_2$ meurt, on retombe sur le partage à trois, où $P_3$ obtient $100$, $P_4$ obtient $0$ et $P_5$ obtient $0$.

- Acheter $P_3$ coûterait plus de $100$ pièces : impossible.
- $P_4$ obtiendrait $0$ ; une seule pièce lui fait donc strictement mieux, et il accepte.
- $P_5$ obtiendrait $0$ ; une seule pièce suffit aussi.

$P_2$ propose donc $(98, 0, 1, 1)$ et obtient trois voix : la sienne, celle de $P_4$ et celle de $P_5$.

**Cinq pirates : le vrai problème.**

$P_1$ propose. Il faut plus de la moitié de $5$ votants, soit plus de $2{,}5$ : au moins $3$ voix. La sienne, plus deux autres.

Si $P_1$ meurt, on retombe sur le partage à quatre : $P_2$ obtient $98$, $P_3$ obtient $0$, $P_4$ obtient $1$ et $P_5$ obtient $1$.

$P_1$ cherche les deux voix les moins chères :

- $P_2$ coûterait plus de $98$ pièces : hors de question ;
- $P_3$ obtiendrait $0$, donc $1$ pièce suffit ;
- $P_4$ obtiendrait $1$, donc il faut lui donner $2$ pièces ;
- $P_5$ obtiendrait $1$, donc il faut lui donner $2$ pièces.

Les deux voix les moins chères coûtent $1$ pièce ($P_3$) et $2$ pièces ($P_4$ ou $P_5$, au choix).

**Réponse.** $P_1$ propose

$$(97,\; 0,\; 1,\; 2,\; 0) \qquad \text{ou} \qquad (97,\; 0,\; 1,\; 0,\; 2),$$

et garde $97$ pièces pour lui.

## Going further

Le point le plus contre-intuitif est que le pirate le plus gradé, celui qui risque sa vie en premier, est aussi celui qui rafle presque tout. La raison est qu'il joue en dernier dans le raisonnement : il connaît exactement ce que vaut le refus pour chacun des autres, et il achète au plus juste.

La priorité numéro 3 (« à pièces égales, préférer voir quelqu'un se faire dévorer ») n'est pas un détail pittoresque : sans elle, un pirate indifférent pourrait accepter un partage qui lui donne exactement ce qu'il aurait eu, et les réponses changeraient. Dans un problème de ce genre, il faut toujours fixer ce que font les joueurs en cas d'égalité.

Et avec plus de pirates ? Avec $2k+1$ pirates et $100$ pièces, le raisonnement se poursuit de la même façon : le chef achète $k$ voix, à $1$ ou $2$ pièces chacune, et garde le reste. Cela tient tant qu'il y a assez de pièces. Avec $201$ pirates et seulement $100$ pièces, le chef n'a plus de quoi acheter assez de voix : l'analyse devient alors nettement plus subtile, et certains pirates ne survivent que parce que d'autres ont intérêt à les garder en vie.
