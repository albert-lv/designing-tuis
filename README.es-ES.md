

# Diseño de TUI

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Skill](https://img.shields.io/badge/type-skill-blue.svg)](./SKILL.md)

Una habilidad y referencia estructurada para el diseño de **Interfaces de Usuario de Terminal (TUI)**. Cubre el diseño basado en diálogos, flujos de trabajo de captura a código y el esquema `.tui` para generar implementaciones de TUI consistentes, accesibles y portátiles entre frameworks.

> **Caso de uso**: Generación de TUI asistida por IA, pipelines de diseño a código y colaboración humano-IA en interfaces de terminal.

## Contenido

- `SKILL.md` — Punto de entrada principal con arquitectura de doble ruta, protocolo de descomposición en 3 fases, mecanismo de proporción, protocolo de comparación/iteración y expectativas de precisión.
- `references/components-cheatsheet.md` — Valores predeterminados de componentes, firmas visuales y reglas de desambiguación.
- `references/layout-inference-rules.md` — Reglas de inferencia de orientación del diseño, identificación de componentes, espaciado, proporción, bordes y color.
- `references/color-accessibility.md` — Estándares de color WCAG, paletas seguras para daltonismo (Okabe-Ito, IBM), requisitos de contraste y pautas de accesibilidad específicas para TUI.
- `references/schema-to-code-mapping.md` — Referencia de conversión del esquema `.tui` → código del framework (BubbleTea / Ink / Textual).
- `references/known-quirks.md` — Trampas de tui-studio y soluciones alternativas.
- `references/workflow-examples.md` — Guías paso a paso del flujo de trabajo de doble ruta con ejemplos del protocolo de 3 fases.

## Primeros Pasos

1. Lea [`SKILL.md`](./SKILL.md) para conocer el protocolo general.
2. Consulte [`references/components-cheatsheet.md`](./references/components-cheatsheet.md) al interpretar capturas de pantalla de la IU.
3. Utilice [`references/schema-to-code-mapping.md`](./references/schema-to-code-mapping.md) para convertir esquemas `.tui` en código de framework.

## Frameworks Compatibles

- [Bubble Tea](https://github.com/charmbracelet/bubbletea) (Go)
- [Ink](https://github.com/vadimdemedes/ink) (React / Node.js)
- [Textual](https://github.com/Textualize/textual) (Python)

## Contribuciones

Se agradecen sugerencias para nuevos componentes, mapeos de frameworks o ejemplos de flujo de trabajo. Consulte [CONTRIBUTING.md](CONTRIBUTING.md).

## Licencia

Este proyecto está licenciado bajo la [Licencia MIT](LICENSE).

## Palabras clave

`tui` `terminal-user-interface` `design-to-code` `screenshot-to-code` `bubble-tea` `ink` `textual` `cli` `ui-design` `accessibility` `wcag` `schema` `skill`
