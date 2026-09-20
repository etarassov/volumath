---
id: "5212"
title: "La dernière perle de la boîte"
grade: 8
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [parite, invariant, jeu, perles]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Pigeonhole Principle and Parity Problems — Brian Conrey et Corinne Cristiani"
  reference: "ConreyCristianiPig_and_par.pdf, « Parity problems », problème 3"
  url: "https://mathcircles.org/activity/pigeonhole-principle-and-parity-problems/"
  original_language: "en"
  local_copy: "sources/originals/namc/ConreyCristianiPig_and_par.pdf"
---

## Statement

Une boîte contient $75$ perles blanches et $150$ perles noires. À côté, un tas de perles noires sert de réserve.

On répète l'opération suivante :

> On tire deux perles de la boîte.
> - Si les deux perles tirées sont blanches, on les jette toutes les deux et on met dans la boîte une perle noire prise dans la réserve.
> - Sinon, c'est-à-dire si au moins une des deux perles tirées est noire, on jette une perle noire et on remet l'autre perle dans la boîte.

À chaque opération, la boîte perd exactement une perle. On répète donc jusqu'à ce qu'il ne reste qu'une seule perle.

**De quelle couleur est cette dernière perle ?**

## Hints

1. Ne cherchez pas à suivre le détail de ce qui se passe : il y a bien trop de possibilités. Cherchez plutôt une quantité qui ne change presque jamais.
2. Regardez uniquement les perles **blanches**. Combien la boîte en perd-elle à chaque opération, selon le cas ?
3. Le nombre de perles blanches diminue de $2$ ou ne bouge pas. Que peut-on en dire de sa **parité** ?
4. Au départ il y a $75$ perles blanches. À la fin, il n'en reste qu'une seule dans la boîte : combien de perles blanches y a-t-il alors ?

## Solution

**L'idée : suivre le nombre de perles blanches.**

Notons $b$ le nombre de perles blanches présentes dans la boîte. Examinons les deux cas de l'opération.

- **Deux perles blanches tirées.** On les jette et on ajoute une perle noire. Le nombre de perles blanches passe de $b$ à $b - 2$.
- **Au moins une perle noire tirée.** On jette une perle noire et on remet l'autre perle dans la boîte. Aucune perle blanche ne quitte la boîte, et aucune n'y entre, car la réserve ne contient que des perles noires. Le nombre de perles blanches ne change pas.

Dans les deux cas, $b$ diminue de $2$ ou reste le même. **La parité de $b$ ne change donc jamais.**

**Application.**

Au départ, $b = 75$, qui est impair. Donc à tout moment, le nombre de perles blanches dans la boîte est impair. En particulier il n'est jamais nul, puisque $0$ est pair : il reste toujours au moins une perle blanche.

À la fin, la boîte contient une seule perle. Le nombre de perles blanches qu'elle contient vaut $0$ ou $1$, et il est impair : il vaut donc $1$.

**La dernière perle est blanche.**

*(On peut vérifier au passage que le processus va bien jusqu'au bout : chaque opération est possible tant qu'il reste au moins deux perles, et elle fait perdre une perle à la boîte. Partant de $225$ perles, on effectue $224$ opérations.)*

## Going further

Le nombre de perles noires, lui, varie dans tous les sens, et le nombre total de perles diminue régulièrement : ces deux quantités ne servent à rien. Tout le problème tenait à repérer **la bonne quantité**, celle dont la parité est conservée. C'est le principe d'un *invariant*, et il resservira souvent.
