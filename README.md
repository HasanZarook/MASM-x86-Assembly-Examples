
# 🖥️ MASM x86 Assembly Examples

Welcome to a **collection of MASM x86 Assembly examples** using the **Irvine32 library**!
Learn **low-level programming**, memory operations, and console I/O through simple, interactive examples. 🚀

---

## 📚 Concepts Covered

### 1️⃣ Registers & Data Movement

* `mov eax, value`, `mov al, byteVar`
* Access **8-bit, 16-bit, 32-bit registers** (`al`, `ax`, `eax`)
* Dump registers for debugging: `dumpregs` 📝

```asm
mov eax,0
mov al,data
call writeint
call dumpregs
```

---

### 2️⃣ Arrays & Memory 🗂️

* Declare arrays: `BYTE`, `WORD`, `DWORD`
* Use `dup` to repeat initializations
* Access elements with offsets

```asm
array BYTE 10,20,30,40
mov al,array+2
call writeint
```

---

### 3️⃣ Strings & Characters ✏️

* Declare strings: `BYTE "abcd",0`
* Output: `writestring`, `writechar`

```asm
str BYTE "Hello",0
mov edx, OFFSET str
call writestring
```

---

### 4️⃣ Input / Output ⌨️🖥️

* Read integers: `readint`
* Display numbers & chars: `writeint`, `writechar`

```asm
call readint
mov value1, eax
call writeint
```

---

### 5️⃣ Arithmetic Operations ➕➖✖️➗

* Addition, subtraction, multiplication, division
* Work with registers and memory variables

```asm
mov eax, value1
mov edx, 0
div value2
call writeint  ; quotient
mov eax, edx
call writeint  ; remainder
```

---

### 6️⃣ Loops & Labels 🔁

* Iterate using `loop`
* Label-based jumps

```asm
mov ecx,4
L1:
    mov edx, offset hel
    call writestring
    loop L1
```

---

### 7️⃣ Useful Tips 💡

* `sizeof` calculates memory size of arrays/strings
* Always clean registers before operations (`mov eax,0`)
* Combine examples to build **interactive assembly programs**

---

## 🗂️ File Structure Suggestion

```
src/
├─ arrays.asm
├─ strings.asm
├─ input_output.asm
├─ arithmetic.asm
├─ dup_example.asm
├─ dumpregs_example.asm
├─ loop_example.asm
├─ main.asm
```

---

## 🏁 How to Run

1. Install **MASM32** or configure MASM in your IDE
2. Ensure `Irvine32.inc` & `Irvine32.lib` are in your project path
3. Compile:

```bash
ml /c /coff filename.asm
```

4. Link:

```bash
link /SUBSYSTEM:CONSOLE filename.obj Irvine32.lib
```

5. Run the executable:

```bash
filename.exe
```

---

## 🔮 Future Improvements

* Build a **menu-driven interactive program**
* Add **step-by-step comments for each instruction**
* Include **stack operations, procedures, conditional jumps, loops**
* Create **examples for advanced I/O and string manipulation**

---

Do you want me to do that next?
