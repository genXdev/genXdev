# Start-SnakeGame

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `snake

## Synopsis

> Démarrer un jeu de Snake simple dans la console.

## Description

Cette fonction initialise et exécute un jeu Snake basique dans la console PowerShell. Le joueur contrôle le serpent à l'aide des touches fléchées ou des touches WASD, dans le but de manger de la nourriture et de grandir tout en évitant les collisions avec les murs ou lui-même. Le jeu ajuste dynamiquement la vitesse en fonction de l'espace disponible et de la longueur du serpent. Par défaut, la console est effacée avant le début du jeu.

## Syntax

```powershell
Start-SnakeGame [[-InitialLength] <Int32>] [[-Speed] <Int32>] [-MazeWidth <Int32>] [-NoClear] [-ShowRoute] [-WithMaze] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialLength` | Int32 | — | — | 0 | `5` | Longueur initiale du serpent (par défaut : 5) |
| `-Speed` | Int32 | — | — | 1 | `300` | Vitesse du jeu en millisecondes entre les coups (par défaut : 300) |
| `-NoClear` | SwitchParameter | — | — | Named | — | Empêche d'effacer la console avant de lancer le jeu |
| `-WithMaze` | SwitchParameter | — | — | Named | — | Dessine un labyrinthe à l'intérieur du terrain de jeu en utilisant des caractères de dessin ASCII pour les murs et les lignes, similaire à la bordure |
| `-ShowRoute` | SwitchParameter | — | — | Named | — | Affiche le chemin le plus court de la tête du serpent vers la nourriture à l'aide de petits points verts centrés |
| `-MazeWidth` | Int32 | — | — | Named | `2` | Largeur minimale des chemins pour le labyrinthe (1-10, par défaut : 2) |

## Examples

### Start-SnakeGame

```powershell
Start-SnakeGame
```

Démarre le jeu Snake avec les paramètres par défaut (5 segments, vitesse 300 ms).

### Start-SnakeGame -NoClear -InitialLength 3 -Speed 200

```powershell
Start-SnakeGame -NoClear -InitialLength 3 -Speed 200
```

Lance le jeu Snake sans effacer la console, avec un serpent plus court et une vitesse plus rapide.

### snake -InitialLength 10

```powershell
snake -InitialLength 10
```

Lance le jeu en utilisant l'alias avec un serpent initial plus long.

### Start-SnakeGame -WithMaze

```powershell
Start-SnakeGame -WithMaze
```

Lance le jeu Snake avec un labyrinthe dans l'aire de jeu.

### Start-SnakeGame -WithMaze -ShowRoute

```powershell
Start-SnakeGame -WithMaze -ShowRoute
```

Lance le jeu Snake avec un labyrinthe et affiche le chemin le plus court du serpent vers la nourriture à l'aide de points verts.

### Start-SnakeGame -WithMaze -MazeWidth 5

```powershell
Start-SnakeGame -WithMaze -MazeWidth 5
```

Lance le jeu Snake avec un labyrinthe dont les chemins sont plus larges (minimum 5 espaces) pour une navigation plus facile.

## Related Links

- [Start-SnakeGame on GitHub](https://github.com/genXdev/genXdev)
