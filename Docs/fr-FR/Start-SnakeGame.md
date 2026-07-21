# Start-SnakeGame

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `snake`

## Synopsis

> Démarre un jeu Snake simple dans la console.

## Description

Cette fonction initialise et exécute un jeu Snake basique dans la console PowerShell. Le joueur contrôle le serpent à l'aide des touches fléchées ou des touches WASD, dans le but de manger de la nourriture et de grandir tout en évitant les collisions avec les murs ou lui-même. Le jeu ajuste dynamiquement la vitesse en fonction de l'espace disponible et de la longueur du serpent. Par défaut, la console est effacée avant le démarrage.

## Syntax

```powershell
Start-SnakeGame [[-InitialLength] <Int32>] [[-Speed] <Int32>] [-MazeWidth <Int32>] [-NoClear] [-ShowRoute] [-WithMaze] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialLength` | Int32 | — | — | 0 | `5` | Longueur initiale du serpent (par défaut : 5) |
| `-Speed` | Int32 | — | — | 1 | `300` | Vitesse du jeu en millisecondes entre les coups (par défaut : 300) |
| `-NoClear` | SwitchParameter | — | — | Named | — | Empêche d'effacer la console avant de commencer le jeu |
| `-WithMaze` | SwitchParameter | — | — | Named | — | Dessine un labyrinthe dans l'aire de jeu en utilisant des caractères de dessin ASCII pour les murs et les lignes, similaire à la bordure |
| `-ShowRoute` | SwitchParameter | — | — | Named | — | Affiche le chemin le plus court de la tête du serpent vers la nourriture en utilisant de petits points verts centrés. |
| `-MazeWidth` | Int32 | — | — | Named | `2` | Largeur minimale du chemin pour le labyrinthe (1-10, par défaut : 2) |

## Examples

### Start-SnakeGame

```powershell
Start-SnakeGame
```

Démarre le jeu Snake avec les paramètres par défaut (5 segments, vitesse 300ms).

### Start-SnakeGame -NoClear -InitialLength 3 -Speed 200

```powershell
Start-SnakeGame -NoClear -InitialLength 3 -Speed 200
```

Lance le jeu Snake sans effacer la console, avec un serpent plus court et une vitesse plus rapide.

### snake -InitialLength 10

```powershell
snake -InitialLength 10
```

Démarre le jeu en utilisant l'alias avec un serpent initial plus long.

### Start-SnakeGame -WithMaze

```powershell
Start-SnakeGame -WithMaze
```

Démarre le jeu Snake avec un labyrinthe dans l'aire de jeu.

### Start-SnakeGame -WithMaze -ShowRoute

```powershell
Start-SnakeGame -WithMaze -ShowRoute
```

Démarre le jeu Snake avec un labyrinthe et affiche le chemin le plus court du serpent vers la nourriture avec des points verts.

### Start-SnakeGame -WithMaze -MazeWidth 5

```powershell
Start-SnakeGame -WithMaze -MazeWidth 5
```

Lance le jeu du serpent avec un labyrinthe dont les allées sont plus larges (minimum 5 espaces) pour faciliter la navigation.

## Parameter Details

### `-InitialLength <Int32>`

> Longueur initiale du serpent (par défaut : 5)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `5` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Speed <Int32>`

> Vitesse du jeu en millisecondes entre les coups (par défaut : 300)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `300` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoClear`

> Empêche d'effacer la console avant de commencer le jeu

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithMaze`

> Dessine un labyrinthe dans l'aire de jeu en utilisant des caractères de dessin ASCII pour les murs et les lignes, similaire à la bordure

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowRoute`

> Affiche le chemin le plus court de la tête du serpent vers la nourriture en utilisant de petits points verts centrés.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MazeWidth <Int32>`

> Largeur minimale du chemin pour le labyrinthe (1-10, par défaut : 2)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `2` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRNew-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRNow.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRsecondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRsidebyside.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRStart-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRStop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRUtcNow.md)
