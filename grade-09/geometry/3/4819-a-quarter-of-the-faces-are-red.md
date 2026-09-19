---
id: "4819"
title: "Un quart des faces sont rouges"
grade: 9
theme: geometry
difficulty: 3
duration_min: 25
tags: [cube, aire, volume, proportion, equation]
adapted_from: null
see_also: ["0559"]
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Essential Counting Strategies (Kevin Wang)"
  reference: "handoutId11-0.pdf, exercice 14"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/handoutId11-0.pdf"
---

## Statement

On prend un cube de bois dont l'arête mesure $n$ centimètres, $n$ étant un entier. On peint ses six faces en rouge, puis on le découpe en $n^3$ petits cubes de $1$ cm d'arête.

Chaque petit cube a six faces, certaines rouges, les autres non.

On constate qu'**exactement un quart** de toutes les faces des petits cubes sont rouges.

Combien vaut $n$ ?

## Hints

1. Combien y a-t-il de petits cubes ? Et donc combien de faces de petits cubes en tout ?
2. Ne cherche pas à savoir quels petits cubes ont une, deux ou trois faces rouges. Demande-toi plutôt : mises bout à bout, que forment toutes les faces rouges ?
3. Les faces rouges sont exactement celles qui étaient à la surface du gros cube. Quelle est l'aire de cette surface, en petits carrés de $1$ cm de côté ?
4. Écris que le rapport (faces rouges) / (faces en tout) vaut $\dfrac{1}{4}$ et simplifie.

## Solution

**Le nombre total de faces.** Le gros cube donne $n^3$ petits cubes, et chacun a $6$ faces. En tout :
$$6 n^3 \text{ faces.}$$

**Le nombre de faces rouges.** Une face de petit cube est rouge si et seulement si elle se trouvait à la surface du gros cube : la peinture n'a touché que l'extérieur.

Or la surface du gros cube est faite de $6$ carrés de côté $n$, soit $6n^2$ centimètres carrés. Chaque centimètre carré de cette surface est exactement une face de petit cube. Donc :
$$6 n^2 \text{ faces rouges.}$$

**L'équation.** La proportion de faces rouges vaut
$$\frac{6n^2}{6n^3} = \frac{1}{n} .$$

On veut que cette proportion soit $\dfrac{1}{4}$ :
$$\frac{1}{n} = \frac{1}{4}, \qquad \text{donc} \qquad n = 4 .$$

$$\boxed{n = 4}$$

**Vérification.** Pour $n = 4$ : il y a $4^3 = 64$ petits cubes, donc $64 \times 6 = 384$ faces en tout. La surface du gros cube vaut $6 \times 4^2 = 96$ centimètres carrés, donc $96$ faces rouges. Et $\dfrac{96}{384} = \dfrac{1}{4}$. C'est bien cela.

**Ce qu'on a gagné.** Le calcul se simplifie parce que la proportion de faces rouges est simplement $\dfrac{1}{n}$ : plus le cube est gros, plus la part de rouge est faible. Cela se comprend, la surface grandit comme $n^2$ alors que le nombre de petits cubes grandit comme $n^3$.

## Going further

1. Pour quelle valeur de $n$ la proportion de faces rouges vaut-elle $10\,\%$ ? Et $1\,\%$ ?
2. Parmi les $64$ petits cubes obtenus pour $n = 4$, combien ont exactement $3$ faces rouges ? Exactement $2$ ? Exactement $1$ ? Aucune ? Vérifie que le total des faces rouges redonne bien $96$.
3. Reprends la question avec un pavé droit de dimensions $n \times n \times 2n$, peint sur toutes ses faces puis découpé en cubes de $1$ cm d'arête. Montre que la proportion de faces rouges vaut $\dfrac{5}{6n}$, puis trouve $n$ pour qu'elle soit exactement un sixième.
