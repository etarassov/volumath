---
id: "0558"
title: "L'ordre de passage à l'examen"
grade: 9
theme: probability-statistics
difficulty: 4
duration_min: 30
tags: [probabilite, tirage-sans-remise, symetrie, equiprobabilite]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок, 8 классы, пособие для преподавателей"
  reference: "Kan2018.pdf, листок 13 «Вероятность», задача 4"
  url: "https://mmmf.msu.ru/for_schools/Kan2018.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2018.pdf"
---

## Statement

Dix élèves attendent devant la porte de la salle d'examen. Sur la table du professeur sont posés $10$ sujets, tous différents. Les élèves entrent l'un après l'autre, et chacun prend au hasard l'un des sujets encore sur la table.

Michel n'a pas révisé l'un de ces $10$ sujets.

Quelle est la probabilité qu'il tombe justement sur celui-là, s'il entre :

1. en premier ;
2. en dernier ;
3. en sixième ?

Avant de calculer, dire quelle réponse on trouve intuitivement. Vaut-il mieux passer tôt ou tard ?

## Hints

1. Commencer par le cas le plus simple, celui où Michel entre en premier. Là, il choisit au hasard parmi $10$ sujets.
2. Pour le cas où Michel entre en dernier : il ne recevra le sujet redouté que si aucun des neuf premiers ne l'a pris. Calculer d'abord la probabilité que le premier élève ne le prenne pas, puis celle que le deuxième ne le prenne pas non plus, et ainsi de suite.
3. Attention : après chaque passage, il reste un sujet de moins sur la table. Les fractions changent à chaque étape.
4. Une autre façon de voir, qui répond aux trois questions d'un coup : à la fin, les $10$ sujets sont répartis entre les $10$ élèves, un chacun. Le sujet redouté se retrouve chez l'un d'eux. Y a-t-il une raison pour qu'un élève soit plus exposé qu'un autre ?

## Solution

Appelons **sujet noir** celui que Michel n'a pas révisé.

**1. Michel entre en premier.**

Il choisit au hasard parmi les $10$ sujets posés sur la table, qui ont tous la même chance d'être pris. La probabilité qu'il prenne le sujet noir est donc

$$p_1 = \frac{1}{10}.$$

**2. Michel entre en dernier.**

Michel recevra le sujet noir si et seulement si aucun des neuf élèves qui passent avant lui ne l'a pris — car alors il ne restera qu'un sujet sur la table, et ce sera le sujet noir.

Calculons cette probabilité étape par étape.

- Le premier élève choisit parmi $10$ sujets ; $9$ ne sont pas le sujet noir : probabilité $\dfrac{9}{10}$.
- Si c'est fait, le deuxième choisit parmi les $9$ sujets restants, dont $8$ ne sont pas le sujet noir : probabilité $\dfrac{8}{9}$.
- Puis $\dfrac{7}{8}$, puis $\dfrac{6}{7}$, et ainsi de suite jusqu'au neuvième élève, qui choisit parmi $2$ sujets dont $1$ n'est pas le sujet noir : probabilité $\dfrac{1}{2}$.

En multipliant ces probabilités successives :

$$p_2 = \frac{9}{10} \times \frac{8}{9} \times \frac{7}{8} \times \frac{6}{7} \times \frac{5}{6} \times \frac{4}{5} \times \frac{3}{4} \times \frac{2}{3} \times \frac{1}{2}.$$

Tout se simplifie en cascade : le $9$ du premier numérateur s'efface avec le $9$ du deuxième dénominateur, le $8$ avec le $8$, et ainsi de suite. Il ne reste que

$$p_2 = \frac{1}{10}.$$

**3. Michel entre en sixième.**

Michel reçoit le sujet noir si les cinq premiers élèves ne l'ont pas pris, **et** si Michel le prend ensuite.

- Les cinq premiers ne le prennent pas :
  $$\frac{9}{10} \times \frac{8}{9} \times \frac{7}{8} \times \frac{6}{7} \times \frac{5}{6} = \frac{5}{10} = \frac{1}{2}.$$
- Il reste alors $5$ sujets sur la table, dont le sujet noir. Michel le prend avec la probabilité $\dfrac{1}{5}$.

Donc

$$p_3 = \frac{1}{2} \times \frac{1}{5} = \frac{1}{10}.$$

**Les trois réponses sont égales à $\dfrac{1}{10}$.**

**L'explication courte : la symétrie.**

Il y a beaucoup plus rapide, et cela répond aux trois questions d'un coup. À la fin, chacun des $10$ élèves tient exactement un sujet, et les $10$ sujets ont tous été pris. Le tirage revient donc à distribuer les $10$ sujets aux $10$ élèves.

Regardons le sujet noir : il finit chez exactement un élève. Or, **avant** que quoi que ce soit ne soit tiré, les dix élèves jouent exactement le même rôle : rien dans la règle du jeu ne distingue le premier du sixième ou du dernier. Le sujet noir a donc la même chance de finir chez chacun d'eux. Comme ces dix possibilités se partagent la totalité des cas, chacune vaut

$$\frac{1}{10}.$$

**Conclusion.** Dans les trois cas la probabilité est $\dfrac{1}{10}$ : **l'ordre de passage ne change rien**. Se battre pour entrer en premier, ou pour entrer en dernier, ne sert à rien.

**Pourquoi l'intuition se trompe.** On se dit souvent : « si le premier ne prend pas le sujet noir, il n'en reste plus que $9$, et ma probabilité monte à $1/9$ ; donc mieux vaut passer tôt. » C'est vrai que la probabilité monte à $1/9$ *si* le premier ne l'a pas pris. Mais il y a aussi une chance que le premier **le prenne**, et dans ce cas la probabilité de Michel tombe à $0$. Les deux effets se compensent exactement, comme le calcul de la question 3 le montre.

## Going further

1. Michel n'a révisé aucun des deux sujets de géométrie. Quelle est la probabilité qu'il tombe sur l'un des deux, selon sa place dans la file ?
2. Le professeur apporte $12$ sujets pour $10$ élèves, et les deux sujets restants ne sont pas distribués. Michel en redoute toujours un. Sa place change-t-elle quelque chose ? Que vaut la probabilité ?
