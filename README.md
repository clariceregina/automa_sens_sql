# 📊 AutomaSens – Monitoramento Inteligente de Sensores Industriais

**AutomaSens** é um sistema de monitoramento e análise de sensores com base em dados armazenados em SQLite (POWER, SQRT, RANDOM, ABS, HEX). Ele permite realizar análises matemáticas e simulações sobre os dados de leitura de sensores industriais ou ambientais.

## Estrutura da Base de Dados

A base contém uma tabela chamada `Sensores`, onde são armazenadas leituras captadas de dispositivos distribuídos em diferentes áreas da planta industrial.

## Funcionalidades em Destaque

### 🔋 Uso da função `POWER()`

Permite calcular o valor da leitura ao quadrado. É útil para análises como energia (proporcional ao quadrado da corrente ou da tensão), ou como parte de diagnósticos estatísticos.

### 🧮 Uso da função `SQRT()`

Utilizada para extrair a raiz quadrada da leitura dos sensores. Isso pode servir, por exemplo, para verificar intensidades de vibração ou aceleração, que crescem com o quadrado da medição.

### 🎲 Uso da função `RANDOM()`

Gera números aleatórios que são somados às leituras dos sensores, simulando ruídos ou variações reais que ocorrem no ambiente industrial. Isso auxilia em testes de tolerância ou sistemas de correção.

### 📉 Uso da função `ABS()`

Garante o uso do valor absoluto das leituras, eliminando o efeito de sinais negativos. Muito útil quando se deseja apenas a magnitude física de uma medida, como corrente elétrica ou deslocamento.

### 🔢 Uso da função `HEX()`

Converte os dados dos sensores para representação hexadecimal, o que pode ser usado em sistemas de codificação, compressão ou transmissão em protocolos binários.

---

## ✅ Verificação de Precisão

Foi realizada uma verificação lógica comparando `POWER(leitura, 0.5)` com `SQRT(leitura)`, garantindo que ambas as funções matemáticas geram resultados consistentes nas leituras válidas.

---

## 🔀 Amostragem Aleatória

Utilizando a função `RANDOM()`, também foi possível ordenar aleatoriamente os sensores para fins de testes e amostragem não determinística.
