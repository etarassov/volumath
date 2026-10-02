---
id: "13631"
title: "Cinq essais ne suffisent pas"
grade: 10
theme: combinatorics
difficulty: 5
duration_min: 60
tags: [principe-des-tiroirs, denombrement, chiffres, disjonction-de-cas, construction]
adapted_from: null
see_also: ["7606"]
same_as: []
created: 2026-10-02
source:
  name: "Coupe Animath de printemps 2013 (test de sélection du stage olympique de Montpellier, 4 juin 2013)"
  reference: "2017-09_coupe_printemps_2013_1.pdf, épreuve de première, exercice 6, question b) ; corrigé 2017-09_coupe_printemps_2013_corrige.pdf, exercice 6 b). Aussi dans stage_ete_2013.pdf, chapitre XII « Test de sélection du 4 juin 2013 », exercice 6, question b), pp. 440-442. Le corrigé écrit a6 au lieu de a7 dans le deuxième cas, et dans le premier cas il pose x1 = a6 et x2 = α sans vérifier que ces deux chiffres sont différents : la solution ci-dessous comble ce trou."
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_printemps_2013_1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_printemps_2013_1.pdf"
---

## Statement

Le code secret du coffre-fort d'une association est une suite de $7$ chiffres **tous différents**, choisis parmi $0, 1, 2, \ldots, 9$.

Pour essayer d'ouvrir le coffre, on compose une suite de $7$ chiffres tous différents. Le coffre s'ouvre dès qu'**au moins un** des $7$ chiffres composés se trouve à la même place que dans le code secret.

Par exemple, si le code secret est $0123456$, l'essai $9123407$ ouvre le coffre, mais l'essai $1234567$ ne l'ouvre pas.

Quelqu'un a préparé à l'avance une liste de $5$ essais. Montrer que, **quels que soient ces $5$ essais**, il existe un code secret pour lequel aucun d'eux n'ouvre le coffre.

## Hints

1. Rangez les $5$ essais les uns sous les autres, dans un tableau de $5$ lignes et $7$ colonnes. On cherche un code $x_1 x_2 \ldots x_7$, de chiffres tous différents, tel que pour chaque place $j$ le chiffre $x_j$ n'apparaisse nulle part dans la colonne $j$.
2. Choisissez les chiffres du code un par un, de gauche à droite. À la place $j$, combien de chiffres sont interdits, au plus ? À partir de quelle place risque-t-on d'être bloqué ?
3. Pour ne pas être bloqué aux places $6$ et $7$, il faut que certains des premiers chiffres choisis soient **déjà** interdits à ces places-là, pour qu'ils ne comptent pas deux fois. Séparez deux cas : une colonne contient au plus $4$ chiffres différents, ou bien toutes les colonnes en contiennent $5$.
4. Dans le second cas, $7$ colonnes de $5$ chiffres différents font $35$ chiffres, pris parmi seulement $10$ : deux colonnes ont un chiffre en commun. Dans les deux cas, servez-vous aussi de ceci : un chiffre apparaît au plus une fois dans chaque essai, donc au plus $5$ fois dans tout le tableau.

## Solution

**Mise en place.** Écrivons les $5$ essais les uns sous les autres :

| | place 1 | place 2 | place 3 | place 4 | place 5 | place 6 | place 7 |
|---|---|---|---|---|---|---|---|
| essai $a$ | $a_1$ | $a_2$ | $a_3$ | $a_4$ | $a_5$ | $a_6$ | $a_7$ |
| essai $b$ | $b_1$ | $b_2$ | $b_3$ | $b_4$ | $b_5$ | $b_6$ | $b_7$ |
| essai $c$ | $c_1$ | $c_2$ | $c_3$ | $c_4$ | $c_5$ | $c_6$ | $c_7$ |
| essai $d$ | $d_1$ | $d_2$ | $d_3$ | $d_4$ | $d_5$ | $d_6$ | $d_7$ |
| essai $e$ | $e_1$ | $e_2$ | $e_3$ | $e_4$ | $e_5$ | $e_6$ | $e_7$ |

Pour chaque place $j$, notons $C_j$ l'ensemble des chiffres qui apparaissent dans la colonne $j$.

Un code $x_1 x_2 \ldots x_7$ n'est ouvert par aucun des $5$ essais exactement quand, à chaque place $j$, le chiffre $x_j$ n'est pas dans $C_j$. On cherche donc $7$ chiffres **tous différents** avec $x_j \notin C_j$ pour chaque $j$.

Nous allons nous servir de trois remarques.

- **(R1)** Une colonne a $5$ cases, donc $C_j$ contient au plus $5$ chiffres.
- **(R2)** Les chiffres d'un essai sont tous différents. Un chiffre apparaît donc au plus une fois dans chaque ligne, et au plus $5$ fois dans tout le tableau.
- **(R3)** Si l'on échange deux places, à la fois dans les $5$ essais et dans le code, un essai ouvre le coffre après l'échange exactement quand il l'ouvrait avant. On peut donc numéroter les colonnes dans l'ordre qui nous arrange. De même, l'ordre des essais n'a pas d'importance, et on peut renommer les lignes.

**Étape 1 : où peut-on être bloqué ?** Supposons que l'on ait déjà choisi $x_1$ et $x_2$, différents, avec $x_1 \notin C_1$ et $x_2 \notin C_2$, et choisissons les chiffres suivants un par un.

- À la place $3$, sont interdits les chiffres de $C_3$ (au plus $5$) et les chiffres déjà pris $x_1, x_2$ : au plus $7$ chiffres. Il reste au moins $3$ choix.
- À la place $4$, au plus $5 + 3 = 8$ chiffres sont interdits : il reste au moins $2$ choix.
- À la place $5$, au plus $5 + 4 = 9$ chiffres sont interdits : il reste au moins $1$ choix.
- À la place $6$, on compte au plus $5 + 5 = 10$ chiffres interdits : on risque d'être bloqué.
- À la place $7$, on compte au plus $5 + 6 = 11$ chiffres interdits : on risque encore plus d'être bloqué.

On évite le blocage si certains chiffres déjà pris sont **aussi** dans la colonne : ils sont alors comptés deux fois dans les totaux ci-dessus, et le vrai nombre de chiffres interdits est plus petit.

- À la place $6$ : si $x_1$ ou $x_2$ est dans $C_6$, au plus $5 + 5 - 1 = 9$ chiffres sont interdits, et il reste un choix.
- À la place $7$ : si $C_7$ contient au plus $4$ chiffres et que $x_1$ ou $x_2$ est dans $C_7$, au plus $4 + 6 - 1 = 9$ chiffres sont interdits. Si $C_7$ contient $5$ chiffres et que $x_1$ **et** $x_2$ sont dans $C_7$, au plus $5 + 6 - 2 = 9$ chiffres sont interdits. Dans les deux situations, il reste un choix.

Tout revient donc à bien choisir les deux premiers chiffres. Il nous faut :

1. $x_1 \notin C_1$, $x_2 \notin C_2$ et $x_1 \neq x_2$ ;
2. $x_1$ ou $x_2$ dans $C_6$ ;
3. si $C_7$ a au plus $4$ chiffres, $x_1$ ou $x_2$ dans $C_7$ ; si $C_7$ a $5$ chiffres, $x_1$ et $x_2$ dans $C_7$.

**Étape 2 : premier cas, une colonne contient au plus $4$ chiffres différents.** D'après (R3), on la place en position $7$.

*Le chiffre $x_1$.* Les ensembles $C_1, C_2, \ldots, C_6$ ne sont pas tous égaux. En effet, s'ils étaient tous égaux à un même ensemble, cet ensemble contiendrait les $6$ chiffres $a_1, a_2, \ldots, a_6$ de l'essai $a$, qui sont différents. Or il a au plus $5$ chiffres d'après (R1).

Prenons donc deux de ces colonnes dont les ensembles sont différents. L'une des deux contient un chiffre absent de l'autre. Numérotons $6$ celle qui contient ce chiffre et $1$ l'autre. Ce chiffre apparaît dans la colonne $6$ : renommons les lignes pour qu'il soit $a_6$. On pose
$$x_1 = a_6 .$$
Ainsi $x_1 \in C_6$ et $x_1 \notin C_1$.

*Le chiffre $x_2$.* La colonne $7$ a $5$ cases mais au plus $4$ chiffres différents, donc un chiffre $y$ y apparaît au moins deux fois. Si chacune des colonnes $2, 3, 4, 5$ contenait tous les chiffres de $C_7$, alors $y$ apparaîtrait au moins une fois dans chacune d'elles, en plus de ses deux apparitions dans la colonne $7$ : au moins $6$ fois en tout, ce qui contredit (R2). Une des colonnes $2, 3, 4, 5$ ne contient donc pas un certain chiffre $\alpha$ de $C_7$ : numérotons-la $2$. Ainsi $\alpha \in C_7$ et $\alpha \notin C_2$.

- Si $x_1 \notin C_7$, on pose $x_2 = \alpha$. On a bien $x_2 \notin C_2$, et $x_2 \neq x_1$ car $x_2$ est dans $C_7$ et $x_1$ n'y est pas.
- Si $x_1 \in C_7$, on prend pour $x_2$ n'importe quel chiffre hors de $C_2$ et différent de $x_1$. Il y a au moins $10 - 5 - 1 = 4$ possibilités.

Vérifions les trois conditions. La condition 1 est réalisée par construction. La condition 2 l'est car $x_1 = a_6 \in C_6$. Pour la condition 3, $C_7$ a au plus $4$ chiffres, et dans les deux situations l'un des chiffres $x_1$, $x_2$ est dans $C_7$.

**Étape 3 : second cas, toutes les colonnes contiennent $5$ chiffres différents.** Si les $7$ colonnes n'avaient deux à deux aucun chiffre en commun, elles contiendraient en tout $7 \times 5 = 35$ chiffres différents, alors qu'il n'en existe que $10$. Deux colonnes ont donc un chiffre en commun. D'après (R3), on les numérote $6$ et $7$, et on renomme les lignes pour que ce chiffre commun soit $a_7$. Ainsi $a_7 \in C_6$ et $a_7 \in C_7$.

*Le chiffre $x_1$.* La colonne $7$ contient $5$ chiffres différents, donc $b_7 \neq a_7$. D'après (R2), $b_7$ apparaît au plus une fois dans chacune des lignes $a, c, d, e$, et pas ailleurs dans la ligne $b$. En dehors de la colonne $7$, il apparaît donc au plus $4$ fois, et il manque dans au moins $2$ des colonnes $1$ à $6$. L'une d'elles n'est pas la colonne $6$ : numérotons-la $1$. On pose
$$x_1 = b_7, \qquad \text{de sorte que } x_1 \notin C_1 .$$

*Le chiffre $x_2$.* Le chiffre $a_7$ apparaît une fois dans la colonne $7$ et au moins une fois dans la colonne $6$. D'après (R2), il apparaît au plus $5 - 2 = 3$ fois dans les colonnes $1$ à $5$. Il manque donc dans au moins $2$ d'entre elles, et l'une d'elles n'est pas la colonne $1$ : numérotons-la $2$. On pose
$$x_2 = a_7, \qquad \text{de sorte que } x_2 \notin C_2 .$$

Vérifions les trois conditions. Pour la condition 1, on vient de voir $x_1 \notin C_1$ et $x_2 \notin C_2$, et $x_1 = b_7$ est différent de $x_2 = a_7$. La condition 2 est vraie car $x_2 = a_7 \in C_6$. Pour la condition 3, $C_7$ a $5$ chiffres, et $x_1 = b_7$ comme $x_2 = a_7$ sont dans la colonne $7$.

**Conclusion.** Dans les deux cas, on choisit $x_1$ et $x_2$ comme ci-dessus, puis $x_3, x_4, x_5, x_6, x_7$ un par un comme à l'étape 1, sans jamais être bloqué. On obtient $7$ chiffres tous différents avec $x_j \notin C_j$ pour chaque place $j$. Pour ce code secret, aucun des $5$ essais n'a un chiffre à la bonne place, donc **aucun n'ouvre le coffre**.

Ainsi, quels que soient les $5$ essais préparés, il existe un code secret qui leur résiste : **$5$ essais ne suffisent jamais**.

## Going further

1. On sait que $6$ essais bien choisis ouvrent toujours le coffre (exercice 7606). Avec ce qui précède, **$6$ est donc le nombre minimal d'essais** pour être sûr d'ouvrir le coffre.

2. Une erreur fréquente chez les candidats : croire qu'il suffit d'exhiber $5$ essais et un code que ces $5$ essais n'ouvrent pas pour prouver que $5$ essais ne suffisent pas. Cela prouve seulement que *ces* $5$ essais-là sont mauvais, pas qu'aucun jeu de $5$ essais ne marche. C'est pour cela que la solution ci-dessus part de $5$ essais **quelconques**.

3. À quels endroits la solution utilise-t-elle que les chiffres d'un même essai sont tous différents ? Que se passerait-il si l'on avait le droit de composer un essai comme $1111111$ ?
