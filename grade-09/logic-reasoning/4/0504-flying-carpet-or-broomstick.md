---
id: "0504"
title: "Tapis volant ou balai volant"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [raisonnement-par-l-absurde, disjonction-de-cas, reseau, graphe, demonstration]
adapted_from: null
see_also: []
same_as: ["8118"]
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок, 8 классы, пособие для преподавателей"
  reference: "Kan2018.pdf, листок 2 «Связные графы», задача 2"
  url: "https://mmmf.msu.ru/for_schools/Kan2018.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2018.pdf"
---

## Statement

Au royaume de Merlin, on voyage en tapis volant ou en balai volant. Entre deux villes quelconques du royaume, il existe **au moins une** liaison directe, c'est-à-dire sans escale : soit par tapis volant, soit par balai volant (soit par les deux).

Montrer que **l'un des deux moyens de transport suffit à lui tout seul** : il est possible d'aller de n'importe quelle ville à n'importe quelle autre en n'utilisant que celui-là, quitte à faire des escales dans d'autres villes.

## Hints

1. On veut montrer : « les balais suffisent » **ou** « les tapis suffisent ». Suppose que les balais ne suffisent pas, et essaie de montrer qu'alors les tapis suffisent.
2. Range les villes en groupes : deux villes sont dans le même groupe lorsqu'on peut aller de l'une à l'autre en n'utilisant que des balais (avec escales autorisées). Si les balais ne suffisent pas, combien y a-t-il de groupes au minimum ?
3. Que peut-on dire de la liaison directe entre deux villes qui sont dans des groupes différents ?
4. Il reste le cas de deux villes du même groupe. Fais intervenir une troisième ville, choisie dans un autre groupe.

## Solution

**L'idée : on raisonne par l'absurde sur l'un des deux moyens de transport, et on s'en sort grâce à une troisième ville.**

Supposons que les balais volants ne suffisent pas, c'est-à-dire qu'il existe deux villes qu'aucun trajet en balai (même avec escales) ne relie. Montrons qu'alors les tapis volants, eux, suffisent.

**Étape 1. Ranger les villes en groupes.**

Disons que deux villes sont *amies* lorsqu'on peut aller de l'une à l'autre en n'utilisant que des balais volants, avec autant d'escales qu'on veut.

Cette relation permet de ranger les villes en groupes : dans un même groupe, toutes les villes sont amies deux à deux. En effet, si on va de $X$ à $Y$ en balai et de $Y$ à $Z$ en balai, alors on va de $X$ à $Z$ en balai, en mettant les deux trajets bout à bout.

Par hypothèse, deux villes au moins ne sont pas amies. Il y a donc **au moins deux groupes**.

**Étape 2. La remarque clé.**

Prenons deux villes $U$ et $V$ situées dans **deux groupes différents**. La liaison directe entre $U$ et $V$ ne peut pas être un balai : si elle l'était, $U$ et $V$ seraient amies, donc dans le même groupe. Or l'énoncé garantit qu'il existe au moins une liaison directe entre $U$ et $V$.

**Donc la liaison directe entre deux villes de groupes différents est forcément un tapis volant.**

**Étape 3. Relier deux villes quelconques en tapis.**

Soient maintenant $X$ et $Y$ deux villes quelconques du royaume, distinctes. Deux cas se présentent.

*Cas 1 : $X$ et $Y$ sont dans des groupes différents.* D'après l'étape 2, la liaison directe entre $X$ et $Y$ est un tapis volant. On va donc de $X$ à $Y$ en tapis, sans même faire d'escale.

*Cas 2 : $X$ et $Y$ sont dans le même groupe.* Comme il y a au moins deux groupes, on peut choisir une ville $Z$ dans un **autre** groupe. Alors :

- $Z$ n'est pas dans le même groupe que $X$, donc la liaison $XZ$ est un tapis ;
- $Z$ n'est pas dans le même groupe que $Y$, donc la liaison $ZY$ est un tapis.

On va donc de $X$ à $Y$ en tapis volant, avec une escale à $Z$ : $X \to Z \to Y$.

**Conclusion.**

Dans les deux cas, on relie $X$ à $Y$ en n'utilisant que des tapis volants. Comme $X$ et $Y$ étaient quelconques, les tapis volants suffisent à eux seuls.

Autrement dit : **soit les balais suffisent, soit les tapis suffisent.** C'est exactement ce qu'il fallait démontrer.

*Remarque.* Le raisonnement ne dit pas lequel des deux moyens de transport fonctionne : il dit seulement qu'au moins l'un des deux fonctionne. Et il n'utilise jamais le nombre de villes : la conclusion vaut pour $3$ villes comme pour $1000$.

## Going further

1. Reprendre la démonstration en remplaçant « tapis » et « balai » par deux couleurs, rouge et bleu : on colorie chaque liaison entre deux villes en rouge ou en bleu, et on montre que l'une des deux couleurs relie toutes les villes entre elles.
2. Le résultat reste-t-il vrai avec **trois** moyens de transport, c'est-à-dire trois couleurs ? Chercher un contre-exemple avec peu de villes.
3. Dans le cas 2 de la solution, l'escale se fait en une seule ville $Z$. Peut-on toujours relier deux villes en tapis avec **au plus une** escale ? (Regarder ce qui se passe au cas 1 et au cas 2.)
