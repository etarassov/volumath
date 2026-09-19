---
id: "0276"
title: "Victor et les rectangles"
grade: 9
theme: logic-reasoning
difficulty: 2
duration_min: 15
tags: [contre-exemple, rectangle, aire, perimetre]
adapted_from: null
created: 2026-09-18
source:
  name: "Математический кружок (8–9 класс), первое полугодие, сост. Е. А. Асташов, Д. А. Удимов, МГУ, 2015"
  reference: "AU.pdf, листок 3, задача 4"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU.pdf"
---

## Statement

Victor affirme ceci :

> Si un premier rectangle a une aire plus grande que celle d'un second, **et** un périmètre plus grand que celui du second, alors on peut découper le second rectangle dans le premier.

A-t-il raison ?

## Hints

1. Victor annonce quelque chose pour **tous** les rectangles. Pour montrer qu'il se trompe, un seul exemple bien choisi suffit : c'est ce qu'on appelle un contre-exemple.
2. Un rectangle très long et très fin a une grande aire et un très grand périmètre. Pourtant, que peut-on découper dedans ?
3. Comparez un rectangle de $1$ cm sur $10$ cm et un carré de côté $2$ cm.
4. Pour prouver que le carré ne rentre pas, même en le posant de travers : quel est le plus grand disque contenu dans un carré de côté $2$ cm ?

## Solution

**Victor a tort.** Un seul contre-exemple suffit à le montrer.

**Le contre-exemple.**

Prenons :

- le premier rectangle : $1$ cm sur $10$ cm ;
- le second rectangle : un carré de côté $2$ cm.

Comparons.

| | premier rectangle | second rectangle |
|---|---|---|
| aire | $1 \times 10 = 10$ cm² | $2 \times 2 = 4$ cm² |
| périmètre | $2 \times (1 + 10) = 22$ cm | $4 \times 2 = 8$ cm |

Les deux conditions de Victor sont bien remplies : $10 > 4$ et $22 > 8$.

**Pourtant le carré ne rentre pas.**

Le premier rectangle est une bande de largeur $1$ cm : il est tout entier compris entre deux droites parallèles distantes de $1$ cm.

Regardons maintenant le carré de côté $2$ cm, et appelons $O$ son centre. La distance de $O$ à chacun des quatre côtés vaut $1$ cm. Le disque de centre $O$ et de rayon $1$ cm est donc entièrement contenu dans le carré. Ce disque a un diamètre de $2$ cm.

Si le carré tenait dans la bande, ce disque y tiendrait aussi. Or un disque de diamètre $2$ cm ne peut pas se glisser entre deux droites distantes de $1$ cm : dès qu'on le pose, il déborde.

Remarquez que cet argument marche **quelle que soit la façon de poser le carré**, même en biais : on n'a jamais utilisé l'orientation du carré.

**Conclusion.** Le carré de côté $2$ cm ne peut pas être découpé dans le rectangle $1 \times 10$, bien que ce rectangle ait à la fois une aire plus grande et un périmètre plus grand. L'affirmation de Victor est fausse.

## Going further

1. Trouvez un contre-exemple dans lequel l'aire du premier rectangle est plus de cent fois celle du second.
2. Victor corrige son affirmation : « si la longueur **et** la largeur du premier rectangle sont plus grandes que celles du second, alors on peut découper le second dans le premier ». A-t-il raison cette fois ?
