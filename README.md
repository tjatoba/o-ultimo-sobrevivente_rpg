# 🗑️ O Último Sobrevivente - RPG Pós-Apocalíptico

Um jogo de RPG em Swift ambientado em um mundo pós-apocalíptico onde você é um dos poucos sobreviventes.

## 🎮 Sobre o Jogo

Você é um sobrevivente em um mundo devastado, onde cada decisão pode ser a diferença entre a vida e a morte. Explore áreas perigosas, procure recursos, lute contra mutantes e gerencie seu inventário para sobreviver.

## 🎯 Como Jogar

### Status do Personagem:
- **Saúde (❤️)**: Se chegar a 0, você morre
- **Energia (⚡)**: Se chegar a 0, você desmaia
- **Inventário (🎒)**: Itens coletados durante a jornada

### Ações Disponíveis:
1. **🔍 Explorar área devastada** - Encontra itens aleatórios (gasta 10 de energia)
2. **⛏️ Procurar recursos** - Coleta recursos essenciais (gasta 15 de energia)  
3. **⚔️ Lutar contra mutantes** - Enfrenta perigos por recompensas (gasta 20 de energia)
4. **🎒 Verificar inventário** - Gerencia e usa seus itens
5. **☠️ Sair do jogo** - Finaliza a aventura

## 🛠️ Requisitos

- **Swift 5.0+**
- **Xcode** (opcional, pode usar linha de comando)
- **Sistema**: macOS, Linux (com Swift instalado)

## 🚀 Como Executar

### Método 1: Terminal
```bash
swift main.swift (ou o PLAY da IDE)
```

### Método 2: Xcode
1. Crie um novo projeto "Command Line Tool" em Swift
2. Substitua o conteúdo do `main.swift` pelo código do jogo
3. Execute com `⌘ + R`

## 📁 Estrutura do Código

```
🗑️ O Último Sobrevivente/
├── Variáveis Globais (status, inventário)
├── Funções Principais:
│   ├── mostrarStatus()
│   ├── explorarArea()
│   ├── procurarRecursos()
│   ├── lutarComMutantes()
│   ├── verificarInventario()
│   └── sairDoJogo()
└── Loop Principal do Jogo
```

## 🎲 Mecânicas do Jogo

- **Sistema de Saúde**: Ações afetam sua saúde positiva ou negativamente
- **Sistema de Energia**: Cada ação consome energia
- **Inventário Dinâmico**: Itens podem ser usados automaticamente
- **Aleatoriedade**: Itens encontrados são aleatórios usando `randomElement()`
- **Condições de Derrota**: Saúde ≤ 0 OU Energia ≤ 0

## 💡 Conceitos de Swift Utilizados

- **Variáveis e Constantes** 
- **Arrays e Manipulação**
- **Funções e Parâmetros**
- **Estruturas de Controle (if/else, switch)**
- **Loops (while)**
- **Optional Binding**
- **Métodos de Array (randomElement, contains, firstIndex)**

## 🎪 Exemplo de Jogabilidade

```
=== STATUS DO SOBREVIVENTE ===
Saúde: 85
Energia: 60
Inventário: ["Água", "Comida Enlatada", "Kit Médico"]
===============================

O que você deseja fazer?
1. 🔍 Explorar área devastada
2. ⛏️ Procurar recursos  
3. ⚔️ Lutar contra mutantes
4. 🎒 Verificar inventário
5. ☠️ Sair do jogo (morrer)

Escolha uma opção (1-5): 1

🔍 Explorando a área devastada...
✅ Você encontrou: Bateria
```

## 🎯 Dicas de Sobrevivência

- Monitore sempre sua saúde e energia
- Use Kits Médicos quando a saúde estiver baixa
- Não lute sem energia suficiente
- Explore áreas para encontrar itens valiosos
- Gerencie seu inventário regularmente

## 🤝 Contribuições

Este projeto é educativo e aberto para melhorias. Sinta-se à vontade para:
- Adicionar novos itens
- Criar mais locais para explorar
- Implementar sistema de combate mais complexo
- Adicionar mais inimigos

---

**Boa sorte, sobrevivente! Que você encontre esperança neste mundo devastado.** 🗑️⚡# o-ultimo-sobrevivente_rpg
 Sistema de Combate em Swift, desenvolvido para a conclusão do workshop "Apple Developer Academy", simulando batalhas num mundo pós apocalíptico, calculando danos, determinando vencedores e distribuindo recompensas.
