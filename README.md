# 🌟 All Pokemon Catchable 251 (Gen1Recomp)

A Lua mod for the **Gen1Recomp** engine that makes all 251 Pokémon naturally obtainable in a single playthrough of **Pokémon Crystal**. 

Inspired by the engine implementation of [wowabox's APC 151 Mod](https://github.com/wowabox/All_Pokemon_Catchable_151_Mod) and the encounter/evolution design from [Pokémon Perfect Crystal (2020 Update)](https://www.romhacking.net/reviews/9531/) by aleckermit, this mod uses the Gen1Recomp Mod API to dynamically inject wild encounters and evolution data into the game memory. **Your vanilla ROM and `.sav` files are never altered.**

---

## 🛠️ Installation

1. Download the `crystal-251-catchable.zip` from the [Releases](../../releases) page.
2. Navigate to your Gen1Recomp folder and locate the `mods` directory (create one if it doesn't exist).
3. Place the `.zip` file into the `mods` folder.
4. Open the Gen1Recomp Launcher, go to the **Mods** tab, and enable **"All Pokemon Catchable 251"**.
5. Launch Pokémon Crystal.

---

## 🔄 Evolution Changes

Trade evolutions have been replaced with evolutionary stones to allow solo completion of the Pokédex.

| Pokémon | Evolution Item | Evolves Into |
| :--- | :--- | :--- |
| **Haunter** | Moon Stone | Gengar |
| **Kadabra** | Moon Stone | Alakazam |
| **Poliwhirl** | Moon Stone | Politoed |
| **Machoke** | Sun Stone | Machamp |
| **Graveler** | Sun Stone | Golem |
| **Onix** | Sun Stone | Steelix |
| **Scyther** | Leaf Stone | Scizor |
| **Seadra** | Water Stone | Kingdra |
| **Slowpoke** | Water Stone | Slowking |
| **Porygon** | Thunderstone | Porygon2 |

---

## 🌿 Added & Changed Encounters

Version exclusives, Kanto/Johto starters, and missing Johto Pokémon have been seamlessly integrated into the wild.

### Starters & Fossils
| Pokémon | Location | Time | Encounter Rate | Method |
| :--- | :--- | :--- | :--- | :--- |
| **Chikorita** | Route 31 | Morning | 10% | Walking |
| **Cyndaquil** | Dark Cave (Violet Entrance) | Night | 40% | Walking |
| **Totodile** | Route 32 | Day | 20% | Walking |
| **Bulbasaur** | Ilex Forest | Morning | 5% | Walking |
| **Charmander** | Burned Tower B1F | Night | 10% | Walking |
| **Squirtle** | Union Cave B1F | Morning / Day | 10% | Walking |
| **Squirtle** | Union Cave B1F | All | 40% | Surfing |
| **Omanyte** | Whirl Islands (Lugia's Chamber) | Morning / Day | 5% | Walking |
| **Kabuto** | Whirl Islands (Lugia's Chamber) | Night | 10% | Walking |

### General Encounters
| Pokémon | Location | Time | Encounter Rate | Method |
| :--- | :--- | :--- | :--- | :--- |
| **Vulpix** | Route 36, Route 37 | Morning / Day | 30% | Walking |
| **Mankey** | Route 42, Route 9 | Morning / Day | 30% | Walking |
| **Mareep** | Route 32 | Morning / Day | 30% | Walking |
| **Girafarig** | Route 43 | Any | 30% | Walking |
| **Houndour** | Route 36, Route 37 | Night | 30% | Walking |
| **Murkrow** | Route 38 | Night | 30% | Walking |
| **Slugma** | Burned Tower B1F | Day | 30% | Walking |
| **Natu** | Tin Tower 2F | Day | 30% | Walking |
| **Xatu** | Tin Tower 2F | Day / Night | 20% | Walking |
| **Remoraid** | Route 41 | All | 30% | Surfing |

---

## 🦅 Secret Locations (Legendaries)

The legendary birds, Mewtwo, and Mew have been carefully hidden across Kanto and Johto. They all have a **1% encounter rate** in very specific locations and times of day. Good luck hunting!

| Pokémon | Secret Location | Required Time |
| :--- | :--- | :--- |
| **Articuno** | Ice Path B3F | Night |
| **Zapdos** | Route 10 North (Outside Power Plant) | Day |
| **Moltres** | Mt. Silver (Room 2) | Morning |
| **Mewtwo** | Seafoam Gym (Hiding with Blaine) | Night |
| **Mew** | Mt. Silver Summit (With Red) | Morning |
