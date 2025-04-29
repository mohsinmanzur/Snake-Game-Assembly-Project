# 🐍 Snake Game in Assembly (x86 MASM + Irvine32)

This is a classic **Snake Game** implemented in **x86 Assembly language** using the **MASM assembler** and the **Irvine32 library**. The game runs in the Windows console and features adjustable difficulty levels, a scoring system, and a simple UI with borders and instructions.

---

## 🎮 Features

- 🐍 Snake movement and gameplay mechanics
- 🍎 Random food generation
- 💥 Collision detection (walls and self)
- ⚙️ Three difficulty levels:
  - 1️⃣ Hard
  - 2️⃣ Medium
  - 3️⃣ Easy
- 🧮 Live score display
- 🔁 Option to play again after game over
- 👨‍💻 Team credits printed on screen

---

## 🔧 Requirements

- Windows OS (x86)
- MASM assembler (Microsoft Macro Assembler)
- Irvine32 library (by Kip Irvine)
- A console environment to run `.exe` output

---

## 🚀 How to Run

1. Install **MASM** and set up your assembler environment.
2. Make sure `Irvine32.inc`, `Irvine32.lib`, and `Irvine32.obj` are properly linked.
3. Assemble and link the file:
    ```bash
    ml /c /coff snake.asm
    link /subsystem:console snake.obj Irvine32.lib
    ```
4. Run the generated `snake.exe` in the console.
