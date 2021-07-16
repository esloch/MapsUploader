### UPDATE INCIDENCE MAPS

#### What is it for?
This tool automates the sending of incidences maps.

#### How to use?

*Synchronizing the map images in the production:*
```make send_maps_staging```

*Synchronizing the map images in the staging:*
```make send_maps_production```

#### Directory structure:

```
sync_maps
├── incidence_maps
│ ├── country
│ │ ├── incidence_Nacional_chikungunya.png
│ │ ├── incidence_Nacional_dengue.png
│ │ └── map_partner.png
│ state
│ ├── incidence_CE_chikungunya.png
│ ├── incidence_CE_dengue.png
│ ├── incidence_CE_zika.png
│ ├── incidence_MA_chikungunya.png
│ ├── incidence_MA_dengue.png
│ ├── incidence_MA_zika.png
│ ├── incidence_MG_chikungunya.png
│ ├── incidence_MG_dengue.png
│ ├── incidence_PR_dengue.png
│ ├── incidence_RJ_chikungunya.png
│ ├── incidence_RJ_dengue.png
│ ├── incidence_SC_chikungunya.png
│ ├── incidence_SC_dengue.png
└─└── incidence_SC_zika.png

```

#### Requirements:
- Install rsync:
> sudo apt update && sudo apt install rsync
- Test ssh access:
> ssh username@hostname

#### How to configure?
Create the environment file ```.env_maps ``` inside the sync_maps directory with the variables.
