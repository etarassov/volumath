---
id: "12822"
title: "Les 200 boîtes d'Alice"
grade: 9
theme: combinatorics
difficulty: 5
duration_min: 40
tags: [processus, monovariant, raisonnement-par-l-absurde, principe-extremal]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection d'avril 2023"
  reference: "2023-09_Enonce-Test-4.pdf, test junior, exercice 3 ; corrigé 2023-09_Corrige-Test-4.pdf. Le commentaire des correcteurs signale une erreur dans l'énoncé posé le jour de l'épreuve, sans dire laquelle ; l'énoncé publié, repris ici, est correct."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/09/Enonce-Test-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2023-09_Enonce-Test-4.pdf"
---

## Statement

Alice a posé $200$ boîtes dans son salon. Chaque boîte contient un papier sur lequel est écrit un entier strictement positif ; plusieurs boîtes peuvent contenir le même entier.

Chaque minute, tant que c'est possible, Alice fait l'action suivante. Elle choisit trois boîtes qui contiennent des entiers $a$, $b$ et $c$ tels que $a + b = c$, et elle choisit un entier $k \geq 2$, comme elle veut. Elle remplace alors l'entier $c$ par $k \times c$. Quand elle ne peut plus faire aucune action, elle s'arrête.

Démontrer que, quels que soient les entiers de départ et les choix d'Alice, elle finira forcément par s'arrêter.

## Hints

1. Essayez avec trois boîtes contenant $1$, $1$ et $2$, puis avec quatre boîtes contenant $1$, $2$, $3$, $5$. Que se passe-t-il ?
2. Les nombres ne font qu'augmenter. La boîte qui contient le plus petit nombre peut-elle changer un jour ?
3. Supposez qu'Alice ne s'arrête jamais. Séparez les boîtes en deux groupes : celles qui ne changent qu'un nombre fini de fois, et celles qui changent une infinité de fois. Le second groupe n'est pas vide.
4. Au bout d'un moment, les boîtes du premier groupe ne bougent plus. Notez $v$ le plus grand nombre qu'elles contiennent. Les boîtes du second groupe finissent par dépasser $2v$. Regardez alors la plus petite d'entre elles.

## Solution

Remarquons d'abord deux faits simples.

- **Les nombres ne font qu'augmenter.** Quand $c$ est remplacé par $kc$ avec $k \geq 2$, il augmente de $(k - 1)c \geq c \geq 1$.
- **Le nombre qui change est plus grand que les deux autres.** Comme $a \geq 1$ et $b \geq 1$, on a $c = a + b > a$ et $c > b$.

### Le raisonnement par l'absurde

Supposons qu'Alice ne s'arrête jamais : elle fait une infinité d'actions. Chaque action change le contenu d'une seule boîte. On dit qu'une boîte est

- **bleue** si son contenu ne change qu'un nombre fini de fois (éventuellement zéro fois),
- **rouge** si son contenu change une infinité de fois.

Il y a une infinité d'actions et seulement $200$ boîtes, donc au moins une boîte change une infinité de fois : **il existe au moins une boîte rouge.**

Il existe aussi au moins une boîte bleue. En effet, prenons une boîte qui contient au départ le plus petit nombre, $m$. Pour qu'elle change, il faudrait deux autres boîtes contenant $a$ et $b$ avec $a + b = m$, donc $a < m$. C'est impossible, puisque tous les nombres sont au moins égaux à $m$ au départ, et ne font qu'augmenter ensuite. Cette boîte ne change donc jamais.

### Les boîtes bleues finissent par s'arrêter

Chaque boîte bleue ne change qu'un nombre fini de fois. Il y a donc un moment $T_0$ après lequel **aucune boîte bleue ne change plus**. Notons $v$ le plus grand des nombres contenus dans les boîtes bleues après $T_0$. Deux boîtes bleues contiennent donc au total au plus $2v$.

### Les boîtes rouges finissent par dépasser 2v

Chaque boîte rouge change une infinité de fois, et augmente d'au moins $1$ à chaque fois. Après $2v$ changements, elle contient au moins $1 + 2v$, et ensuite elle ne peut qu'augmenter. Il y a donc un moment $T_1$, après $T_0$, à partir duquel **toutes les boîtes rouges contiennent un nombre strictement plus grand que $2v$**.

### La plus petite boîte rouge est bloquée

Au moment $T_1$, choisissons une boîte rouge $R$ dont le nombre $r$ est le plus petit parmi les boîtes rouges. Montrons que $R$ ne changera plus jamais.

Tant que $R$ n'a pas changé, la situation est la suivante : $R$ contient $r$, les autres boîtes rouges contiennent au moins $r$ (elles ne font qu'augmenter), et les boîtes bleues ne bougent plus.

Pour que $R$ change, il faudrait deux autres boîtes contenant $a$ et $b$ avec $a + b = r$. On aurait alors $a < r$ et $b < r$. Ces deux boîtes ne peuvent pas être rouges, puisque les boîtes rouges contiennent au moins $r$. Elles seraient donc bleues, et $a + b \leq 2v < r$ : impossible.

Ainsi, à chaque action après $T_1$, la boîte $R$ ne change pas. L'action change donc une autre boîte, forcément rouge, qui augmente, et la situation décrite ci-dessus se maintient. Par conséquent $R$ ne change plus jamais après $T_1$. Elle ne change donc qu'un nombre fini de fois : elle est bleue, alors qu'on l'a choisie rouge. C'est une contradiction.

### Conclusion

L'hypothèse « Alice ne s'arrête jamais » mène à une contradiction. **Quels que soient la situation de départ et les choix d'Alice, elle finit par s'arrêter.**

## Going further

1. On ne sait pas au bout de combien de minutes Alice s'arrête. Montrez qu'avec trois boîtes contenant $1$, $n$ et $n + 1$, elle peut faire une action, mais jamais deux.
2. Que devient le problème si Alice a le droit de choisir $k = 1$ ?
