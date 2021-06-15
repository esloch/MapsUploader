
### ENVIO DE MAPAS PARA O INFODENGUE

#### Para que serve?
Esta ferramenta automatiza o envio dos mapas 

#### Como funciona?

As imagens de mapas inseridas na estrutura dos diretórios serão sincronizadas com o diretório /Storage/teste no servidor da infodengue.

#### Como usar?

A árvore de diretórios serve como base, a hierarquia dos diretórios ```infodengue_mapas/2021```  deve ser mantida, 
podendo-se: criar, excluir e renomear as pastas subsequêntes para ajustar de acordo a demanda e as necessidades.  

#### Estrutura de diretórios:

```
.
├── infodengue_mapas
│   └── 2021
│       ├── estaduais
│       ├── nacional
│       └── regionais
├── readme.md
└── upload_maps.sh
```

#### Requisitos?
Rsync instalado e acesso via ssh
- Instalar o rsync:
> sudo apt update &&  sudo apt install rsync
- Testar o acesso ssh:
> ssh username@hostname

#### Como configurar?
Criar o arquivo oculto de configuração de ```.env_maps```  dentro do diretório sync_mapas com as devidas variáveis de ambiente.  
Uma vez tendo garantido e testado o acesso via ssh basta executar o arquivo de script upload_maps.sh localizado na raiz deste diretório.
