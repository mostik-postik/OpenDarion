<div align="center">

# Contributing to OpenDarion

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen?style=flat-square)](https://github.com/mostik-postik/OpenDarion/pulls)
[![Issues](https://img.shields.io/github/issues/mostik-postik/OpenDarion?style=flat-square)](https://github.com/mostik-postik/OpenDarion/issues)

[English](#english) · [Русский](#russian)

</div>

---

<a name="english"></a>

## Ways to Contribute

| Area | Examples |
|------|---------|
| Kernel | XNU patches, boot fixes, architecture ports |
| Drivers | I/O Kit kexts for network, storage, GPU |
| Userland | Shell scripts, init system, coreutils ports |
| Security | MAC policies, sandbox profiles, SIP rules |
| Packages | Adding pkgsrc ports, maintaining darion-pkg |
| Documentation | Guides, RFCs, developer docs, translations |
| Testing | Hardware reports, QEMU configs, bug reports |

---

## Development Workflow

1. **Fork** the repository
2. **Clone** your fork locally
   ```bash
   git clone https://github.com/YOUR_USERNAME/OpenDarion.git
   cd OpenDarion
   git submodule update --init --recursive
   ```
3. **Create a branch** with a descriptive name
   ```bash
   git checkout -b fix/kernel-mach-port-leak
   git checkout -b feature/darion-pkg-search
   git checkout -b docs/qemu-arm64-guide
   ```
4. **Make your changes** with clear, atomic commits
5. **Run lints** before submitting
   ```bash
   ./tools/lint.sh
   ```
6. **Open a Pull Request** against `main`

---

## Commit Style

```
component: short imperative summary (max 72 chars)

Longer explanation if needed. Wrap at 72 chars.
Explain *what* changed and *why*, not how.

Fixes #123
```

### Components

| Prefix | Use for |
|--------|---------|
| `kernel:` | XNU patches, boot, Mach/BSD layer |
| `drivers:` | I/O Kit, kexts |
| `userland:` | Shell, init, coreutils |
| `security:` | MAC, SIP, sandbox |
| `packages:` | pkgsrc, darion-pkg |
| `docs:` | Documentation, guides, RFCs |
| `tools:` | Build scripts, CI |
| `ci:` | GitHub Actions workflows |

### Good examples

```
kernel: fix Mach port leak on task_terminate
userland: add launchd plist validation
docs: add QEMU ARM64 boot guide
tools: parallelize kernel build with -j flag
```

---

## Code Style

### C / C++ (kernel, drivers)

- LLVM coding style
- `clang-format` enforced (config in `.clang-format`)
- No trailing whitespace
- Max line length: 100 characters

```bash
clang-format -i path/to/file.c
```

### Shell scripts

- POSIX `sh` compatible where possible
- `shellcheck` must pass with zero warnings
- `set -euo pipefail` at the top of every script

```bash
shellcheck tools/build-kernel.sh
```

### Python (build tools)

- `black` for formatting
- `ruff` for linting
- Type hints required for all functions
- Python 3.11+

```bash
black tools/
ruff check tools/
```

Run everything at once:

```bash
./tools/lint.sh
```

---

## Design Decisions (RFCs)

For significant changes — new subsystems, breaking changes, architectural decisions — open a **Design Issue** before writing code.

Use the `[RFC]` prefix in the issue title:

```
[RFC] Replace launchd with a custom init system
[RFC] Add Wayland compositor support in Phase 5
```

Discuss the approach, get feedback, then implement. This saves everyone time.

---

## Pull Request Guidelines

- Keep PRs focused — one feature or fix per PR
- Add or update tests where applicable
- Update documentation if you change behaviour
- Reference related issues with `Fixes #N` or `Relates to #N`
- PRs must pass CI before merging

---

## Reporting Bugs

Open an issue with:

1. **What happened** — describe the bug clearly
2. **Steps to reproduce** — minimal reproduction steps
3. **Expected behaviour** — what should have happened
4. **Environment** — OS, architecture, kernel version, QEMU version

---

## License

By contributing, you agree that:
- Your original code is licensed under **MIT**
- XNU-derived code remains under **Apple Public Source License 2.0**

---

---

<a name="russian"></a>

## Как внести вклад

| Область | Примеры |
|---------|---------|
| Ядро | Патчи XNU, исправления загрузки, портирование на архитектуры |
| Драйверы | I/O Kit kexts для сети, хранилища, GPU |
| Пользовательское окружение | Shell-скрипты, init-система, порты coreutils |
| Безопасность | MAC-политики, профили песочницы, правила SIP |
| Пакеты | Добавление портов pkgsrc, поддержка darion-pkg |
| Документация | Руководства, RFC, документация для разработчиков, переводы |
| Тестирование | Отчёты о железе, конфиги QEMU, сообщения об ошибках |

---

## Рабочий процесс

1. **Сделай форк** репозитория
2. **Клонируй** свой форк
   ```bash
   git clone https://github.com/ТВОЙ_НИК/OpenDarion.git
   cd OpenDarion
   git submodule update --init --recursive
   ```
3. **Создай ветку** с понятным именем
   ```bash
   git checkout -b fix/kernel-mach-port-leak
   git checkout -b feature/darion-pkg-search
   git checkout -b docs/qemu-arm64-guide
   ```
4. **Вноси изменения** атомарными коммитами
5. **Запусти линтеры** перед отправкой
   ```bash
   ./tools/lint.sh
   ```
6. **Открой Pull Request** в ветку `main`

---

## Стиль коммитов

```
компонент: короткое описание в повелительном наклонении (макс. 72 символа)

Подробное объяснение если нужно. Перенос на 72 символах.
Объясняй *что* изменилось и *почему*, а не как.

Fixes #123
```

### Префиксы компонентов

| Префикс | Использовать для |
|---------|-----------------|
| `kernel:` | Патчи XNU, загрузка, слои Mach/BSD |
| `drivers:` | I/O Kit, kexts |
| `userland:` | Shell, init, coreutils |
| `security:` | MAC, SIP, песочница |
| `packages:` | pkgsrc, darion-pkg |
| `docs:` | Документация, руководства, RFC |
| `tools:` | Сборочные скрипты, CI |
| `ci:` | Воркфлоу GitHub Actions |

---

## Стиль кода

### C / C++ (ядро, драйверы)

- Стиль LLVM
- Обязателен `clang-format` (конфиг в `.clang-format`)
- Максимальная длина строки: 100 символов

### Shell-скрипты

- Совместимость с POSIX `sh`
- `shellcheck` должен проходить без предупреждений
- `set -euo pipefail` в начале каждого скрипта

### Python (инструменты сборки)

- `black` для форматирования
- `ruff` для линтинга
- Обязательные аннотации типов
- Python 3.11+

---

## Архитектурные решения (RFC)

Для значительных изменений — новые подсистемы, ломающие изменения, архитектурные решения — открой **Design Issue** с префиксом `[RFC]` до написания кода:

```
[RFC] Заменить launchd на собственную init-систему
[RFC] Добавить поддержку Wayland в фазе 5
```

---

## Сообщение об ошибках

Открой issue с описанием:

1. **Что произошло** — чёткое описание проблемы
2. **Шаги воспроизведения** — минимальный сценарий
3. **Ожидаемое поведение** — что должно было произойти
4. **Окружение** — ОС, архитектура, версия ядра, версия QEMU

---

## Лицензия

Делая вклад в проект, ты соглашаешься с тем, что:
- Твой оригинальный код лицензируется под **MIT**
- Код на основе XNU остаётся под **Apple Public Source License 2.0**
