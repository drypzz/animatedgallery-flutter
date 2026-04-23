# 🎮 Champion Select - Galeria de Animações

O objetivo é demonstrar o domínio de animações implícitas, explícitas, transições Hero e componentes customizados.

## 🚀 Requisitos Técnicos Implementados

O projeto cumpre todos os critérios de avaliação estabelecidos na atividade prática:

1.  **Animação Implícita**: Implementada na tela de detalhes através de um `AnimatedContainer`. O botão "Confirmar Seleção" altera dinamicamente sua cor e largura.
2.  **Animação Explícita**: Utilizada na tela inicial com um `AnimationController`. Um ícone de engrenagem gira continuamente (360°) usando `AnimatedBuilder` para garantir uma reconstrução eficiente de performance, mantendo a fluidez da lista.
3.  **Hero Animation**: Transição suave do ícone do campeão entre a tela de lista (origem) e a tela de detalhes (destino), utilizando tags únicas baseadas no ID de cada personagem.
4.  **Material Design 3**: O aplicativo utiliza `useMaterial3: true` e um `ColorScheme.fromSeed` com brilho escuro (*dark mode*), além de componentes nativos M3 como `Card`.

## 📁 Arquitetura do Projeto

O projeto segue uma estrutura organizada para facilitar a manutenção e o trabalho em dupla:

* `models/`: Definição da classe `Champion`.
* `widgets/`: Componentes reutilizáveis como o `StatBadge`.
* `painters/`: Lógica de desenho customizado com `CustomPainter`.
* `screens/`: Interfaces do usuário (Seleção e Detalhes).

---

by drypzz & function