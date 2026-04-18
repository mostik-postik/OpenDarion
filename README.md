<div align="center">

# OpenDarion

**A powerful and secure open-source OS built on Darwin-XNU**

[![Build](https://img.shields.io/github/actions/workflow/status/mostik-postik/OpenDarion/build.yml?branch=main&style=flat-square&label=build)](https://github.com/mostik-postik/OpenDarion/actions)
[![License](https://img.shields.io/badge/license-APSL--2.0%20%2F%20MIT-blue?style=flat-square)](LICENSE)
[![Platform](https://img.shields.io/badge/platform-x86--64%20%7C%20ARM64-lightgrey?style=flat-square)](#)
[![Status](https://img.shields.io/badge/status-early%20development-orange?style=flat-square)](#roadmap)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen?style=flat-square)](CONTRIBUTING.md)

[English](#english) · [Русский](#russian)

</div>

---

<a name="english"></a>

## What is OpenDarion?

OpenDarion is an open-source operating system built on the Darwin-XNU kernel — the same kernel that powers macOS. It is designed for two kinds of people: **developers** who need power and control, and **everyday users** who need simplicity and security.

The goal is to take the best of macOS — a battle-tested kernel, a familiar filesystem layout, and strong application isolation — and make it open, free, and independent.

---

## Key Features

| Feature | Description |
|---------|-------------|
| Darwin-XNU kernel | Built on Apple's open-source XNU — Mach microkernel + BSD layer |
| macOS-like filesystem | Familiar `/System`, `/Library`, `/Users`, `/Applications` layout |
| Per-user Applications | Every user has their own `~/Applications` — no sudo needed to install apps |
| System Integrity Protection | Core system files are read-only and protected |
| Dual audience | Equally comfortable for terminal power users and everyday desktop users |
| POSIX-compliant | Full compatibility with standard Unix tooling |
| Package manager | pkgsrc-based, with a friendly `darion-pkg` wrapper |
| Multi-architecture | x86-64 and ARM64 support |

---

## Filesystem Layout

```
/
├── System/           # System files (read-only, SIP-protected)
├── Library/          # System-wide libraries and resources
├── Applications/     # System and shared applications
├── Users/
│   ├── alice/
│   │   ├── Applications/   # Alice's personal apps (no sudo needed)
│   │   ├── Desktop/
│   │   ├── Documents/
│   │   ├── Downloads/
│   │   └── Library/        # Personal settings and cache
│   └── bob/
│       ├── Applications/   # Bob's personal apps
│       └── ...
├── tmp/
└── var/
```

Each user is fully isolated. Apps installed in `~/Applications` require no administrator rights and do not affect other users.

---

## Getting Started

### Requirements

| Tool | Version |
|------|---------|
| clang / Xcode CLT | 15+ |
| CMake | 3.26+ |
| Ninja | any |
| Python | 3.11+ |
| QEMU *(for testing)* | 8.0+ |

### Build

```bash
git clone https://github.com/mostik-postik/OpenDarion.git
cd OpenDarion
git submodule update --init --recursive

# Build kernel (x86-64)
./tools/build-kernel.sh --arch X86_64 --config RELEASE

# Run in QEMU
./tools/run-qemu.sh --kernel kernel/BUILD/kernel.release.x86_64
```

---

## Roadmap

| Phase | Goal | Status |
|-------|------|--------|
| 0 — Bootstrap | Build XNU, boot in QEMU | 🔄 In progress |
| 1 — Userland | Shell, coreutils, launchd | 📋 Planned |
| 2 — Networking | Network stack, SSH, curl | 📋 Planned |
| 3 — Package Manager | pkgsrc + darion-pkg | 📋 Planned |
| 4 — Security | SIP, sandboxing, secure boot | 📋 Planned |
| 5 — Desktop | Windowing system, UI framework | 📋 Planned |

Full details in [docs/ROADMAP.md](docs/ROADMAP.md).

---

## Contributing

Contributions are welcome — kernel patches, drivers, documentation, packaging, and testing.

1. Read [CONTRIBUTING.md](CONTRIBUTING.md)
2. Pick an issue or open a new one
3. Fork → branch → PR

---

## License

- XNU-derived code: [Apple Public Source License 2.0](LICENSE-APSL)
- All original OpenDarion code: [MIT](LICENSE-MIT)

---

---

<a name="russian"></a>

<div align="center">

## Что такое OpenDarion?

</div>

OpenDarion — операционная система с открытым исходным кодом, построенная на ядре Darwin-XNU — том самом ядре, которое лежит в основе macOS. Она создана для двух типов людей: **разработчиков**, которым нужна мощь и контроль, и **обычных пользователей**, которым важна простота и безопасность.

Цель проекта — взять лучшее от macOS: проверенное временем ядро, знакомую структуру файловой системы и надёжную изоляцию приложений — и сделать это открытым, свободным и независимым.

---

## Ключевые особенности

| Особенность | Описание |
|-------------|----------|
| Ядро Darwin-XNU | Основа — открытый XNU от Apple: микроядро Mach + слой BSD |
| Файловая система как в macOS | Привычные `/System`, `/Library`, `/Users`, `/Applications` |
| Папка Applications для каждого пользователя | Каждый пользователь имеет свою `~/Applications` — установка без sudo |
| Защита системных файлов | Системные файлы защищены аналогом SIP и доступны только для чтения |
| Для всех | Одинаково удобна для работы в терминале и для повседневного использования |
| POSIX-совместимость | Полная совместимость со стандартными Unix-инструментами |
| Менеджер пакетов | На базе pkgsrc с удобной обёрткой `darion-pkg` |
| Несколько архитектур | Поддержка x86-64 и ARM64 |

---

## Структура файловой системы

```
/
├── System/           # Системные файлы (только чтение, защита SIP)
├── Library/          # Общесистемные библиотеки и ресурсы
├── Applications/     # Системные и общие приложения
├── Users/
│   ├── alice/
│   │   ├── Applications/   # Личные приложения Алисы (без sudo)
│   │   ├── Desktop/
│   │   ├── Documents/
│   │   ├── Downloads/
│   │   └── Library/        # Личные настройки и кэш
│   └── bob/
│       ├── Applications/   # Личные приложения Боба
│       └── ...
├── tmp/
└── var/
```

Каждый пользователь полностью изолирован. Приложения в `~/Applications` не требуют прав администратора и не затрагивают других пользователей системы.

---

## Быстрый старт

### Требования

| Инструмент | Версия |
|------------|--------|
| clang / Xcode CLT | 15+ |
| CMake | 3.26+ |
| Ninja | любая |
| Python | 3.11+ |
| QEMU *(для тестирования)* | 8.0+ |

### Сборка

```bash
git clone https://github.com/mostik-postik/OpenDarion.git
cd OpenDarion
git submodule update --init --recursive

# Сборка ядра (x86-64)
./tools/build-kernel.sh --arch X86_64 --config RELEASE

# Запуск в QEMU
./tools/run-qemu.sh --kernel kernel/BUILD/kernel.release.x86_64
```

---

## Дорожная карта

| Фаза | Цель | Статус |
|------|------|--------|
| 0 — Загрузка | Собрать XNU, запустить в QEMU | 🔄 В процессе |
| 1 — Пользовательское окружение | Shell, coreutils, launchd | 📋 Запланировано |
| 2 — Сеть | Сетевой стек, SSH, curl | 📋 Запланировано |
| 3 — Менеджер пакетов | pkgsrc + darion-pkg | 📋 Запланировано |
| 4 — Безопасность | SIP, песочница, безопасная загрузка | 📋 Запланировано |
| 5 — Рабочий стол | Оконная система, UI-фреймворк | 📋 Запланировано |

Подробнее в [docs/ROADMAP.md](docs/ROADMAP.md).

---

## Участие в проекте

Мы рады любому вкладу — патчи ядра, драйверы, документация, тестирование, упаковка пакетов.

1. Прочитай [CONTRIBUTING.md](CONTRIBUTING.md)
2. Выбери задачу из трекера или создай новую
3. Fork → ветка → Pull Request

---

## Лицензия

- Код на основе XNU: [Apple Public Source License 2.0](LICENSE-APSL)
- Оригинальный код OpenDarion: [MIT](LICENSE-MIT)
