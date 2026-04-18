<div align="center">

# OpenDarion Roadmap

[![Status](https://img.shields.io/badge/status-early%20development-orange?style=flat-square)](#)
[![Phase](https://img.shields.io/badge/current%20phase-0%20Bootstrap-purple?style=flat-square)](#phase-0)

[English](#english) · [Русский](#russian)

</div>

---

<a name="english"></a>

## Overview

| Phase | Name | Status |
|-------|------|--------|
| [0](#phase-0) | Bootstrap | 🔄 In progress |
| [1](#phase-1) | Minimal Userland | 📋 Planned |
| [2](#phase-2) | Networking | 📋 Planned |
| [3](#phase-3) | Package Manager | 📋 Planned |
| [4](#phase-4) | Security Hardening | 📋 Planned |
| [5](#phase-5) | Desktop Environment | 📋 Planned |

---

<a name="phase-0"></a>

## Phase 0 — Bootstrap

**Goal:** Get XNU building and booting on real or emulated hardware.

**Target:** Kernel boots in QEMU, prints version string to serial console, drops into kernel debugger.

| Task | Status |
|------|--------|
| Integrate XNU as git submodule | ⬜ Todo |
| Reproducible build script for macOS host | ⬜ Todo |
| Reproducible build script for Linux host | ⬜ Todo |
| Boot minimal ramdisk in QEMU (x86-64) | ⬜ Todo |
| Serial console output from kernel | ⬜ Todo |
| ARM64 target build | ⬜ Todo |
| Boot in QEMU `virt` machine (ARM64) | ⬜ Todo |
| GitHub Actions CI pipeline | ⬜ Todo |

---

<a name="phase-1"></a>

## Phase 1 — Minimal Userland

**Goal:** A usable single-user shell environment.

**Target:** System boots to a `zsh` prompt. Navigate filesystem, run basic commands, reboot cleanly.

| Task | Status |
|------|--------|
| Port `launchd` as PID 1 | ⬜ Todo |
| Minimal `/etc` configuration files | ⬜ Todo |
| Static coreutils (`ls`, `cat`, `cp`, `rm`, `mkdir`) | ⬜ Todo |
| Working `zsh` port | ⬜ Todo |
| `/dev` population via `devfs` | ⬜ Todo |
| Filesystem hierarchy (`/bin`, `/sbin`, `/usr`, `/etc`, `/var`, `/tmp`) | ⬜ Todo |
| macOS-style layout (`/System`, `/Library`, `/Users`, `/Applications`) | ⬜ Todo |
| Per-user `~/Applications` directory support | ⬜ Todo |
| Login prompt and single-user login | ⬜ Todo |

---

<a name="phase-2"></a>

## Phase 2 — Networking

**Goal:** Internet connectivity and remote access.

**Target:** System connects to a network automatically. SSH access works remotely. `curl` can fetch URLs.

| Task | Status |
|------|--------|
| Network interface detection | ⬜ Todo |
| `ifconfig` and interface configuration | ⬜ Todo |
| DHCP client | ⬜ Todo |
| DNS resolution | ⬜ Todo |
| `ping`, `curl`, `wget` | ⬜ Todo |
| OpenSSH port (`sshd`) | ⬜ Todo |
| Basic firewall via `pfctl` | ⬜ Todo |
| NTP time synchronization | ⬜ Todo |

---

<a name="phase-3"></a>

## Phase 3 — Package Manager

**Goal:** A working package ecosystem.

**Target:** `darion-pkg install python3` works end-to-end from a remote repository.

| Task | Status |
|------|--------|
| Integrate `pkgsrc` as primary package manager | ⬜ Todo |
| Bootstrap `pkgin` (binary package installer) | ⬜ Todo |
| Minimal package repository (50+ packages) | ⬜ Todo |
| Package signing and verification | ⬜ Todo |
| `darion-pkg` wrapper CLI | ⬜ Todo |
| Automated package builds in CI | ⬜ Todo |
| Per-user package installation in `~/Applications` | ⬜ Todo |

---

<a name="phase-4"></a>

## Phase 4 — Security Hardening

**Goal:** Secure-by-default system for all users.

**Target:** System passes basic security audit. Unprivileged users cannot modify system files or other users' data.

| Task | Status |
|------|--------|
| System Integrity Protection (SIP) equivalent | ⬜ Todo |
| MAC framework policies (TrustedBSD) | ⬜ Todo |
| Application sandbox profiles | ⬜ Todo |
| Secure boot chain (EFI → bootloader → kernel) | ⬜ Todo |
| Kernel signature verification | ⬜ Todo |
| Capability-based privilege model for services | ⬜ Todo |
| Security audit log via `audit(4)` | ⬜ Todo |
| Full user isolation (`/Users/<name>` permissions) | ⬜ Todo |

---

<a name="phase-5"></a>

## Phase 5 — Desktop Environment

**Goal:** A graphical desktop for workstation use cases.

**Target:** System boots into a graphical session. Apps launch from `~/Applications` with a double-click.

| Task | Status |
|------|--------|
| Display server (Wayland compositor or minimal X11) | ⬜ Todo |
| UI toolkit (GTK4 or custom) | ⬜ Todo |
| Window manager | ⬜ Todo |
| Terminal emulator | ⬜ Todo |
| File manager (with `~/Applications` support) | ⬜ Todo |
| Text editor | ⬜ Todo |
| Font rendering pipeline | ⬜ Todo |
| GPU driver integration via I/O Kit | ⬜ Todo |
| App installer GUI (drag-and-drop to `~/Applications`) | ⬜ Todo |

---

## Long-term Vision

- **Self-hosting** — OpenDarion builds itself
- **Multi-architecture** — x86-64, ARM64, RISC-V
- **Container runtime** — native OCI/Docker-compatible containers
- **Cloud images** — bootable AMI, GCP, and Azure images
- **App Store** — community package browser and installer GUI

---

---

<a name="russian"></a>

## Обзор

| Фаза | Название | Статус |
|------|----------|--------|
| [0](#фаза-0) | Загрузка | 🔄 В процессе |
| [1](#фаза-1) | Пользовательское окружение | 📋 Запланировано |
| [2](#фаза-2) | Сеть | 📋 Запланировано |
| [3](#фаза-3) | Менеджер пакетов | 📋 Запланировано |
| [4](#фаза-4) | Безопасность | 📋 Запланировано |
| [5](#фаза-5) | Рабочий стол | 📋 Запланировано |

---

<a name="фаза-0"></a>

## Фаза 0 — Загрузка

**Цель:** Собрать XNU и запустить на реальном или эмулируемом железе.

**Критерий завершения:** Ядро загружается в QEMU, выводит версию в серийную консоль, входит в отладчик ядра.

| Задача | Статус |
|--------|--------|
| Подключить XNU как git submodule | ⬜ |
| Воспроизводимый скрипт сборки для macOS | ⬜ |
| Воспроизводимый скрипт сборки для Linux | ⬜ |
| Загрузка минимального ramdisk в QEMU (x86-64) | ⬜ |
| Вывод в серийную консоль из ядра | ⬜ |
| Сборка для ARM64 | ⬜ |
| Загрузка в QEMU `virt` machine (ARM64) | ⬜ |
| CI-пайплайн в GitHub Actions | ⬜ |

---

<a name="фаза-1"></a>

## Фаза 1 — Пользовательское окружение

**Цель:** Рабочая среда одного пользователя в командной строке.

**Критерий завершения:** Система загружается в приглашение `zsh`. Можно работать с файлами, запускать команды, перезагружаться.

| Задача | Статус |
|--------|--------|
| Порт `launchd` как PID 1 | ⬜ |
| Минимальные конфигурационные файлы `/etc` | ⬜ |
| Статические coreutils (`ls`, `cat`, `cp`, `rm`, `mkdir`) | ⬜ |
| Рабочий порт `zsh` | ⬜ |
| Заполнение `/dev` через `devfs` | ⬜ |
| Иерархия файловой системы (`/bin`, `/sbin`, `/usr`, `/etc`, `/var`, `/tmp`) | ⬜ |
| Структура как в macOS (`/System`, `/Library`, `/Users`, `/Applications`) | ⬜ |
| Поддержка личной папки `~/Applications` для каждого пользователя | ⬜ |
| Приглашение входа и однопользовательский логин | ⬜ |

---

<a name="фаза-2"></a>

## Фаза 2 — Сеть

**Цель:** Подключение к интернету и удалённый доступ.

**Критерий завершения:** Система автоматически подключается к сети, SSH работает, `curl` получает данные по URL.

| Задача | Статус |
|--------|--------|
| Определение сетевых интерфейсов | ⬜ |
| `ifconfig` и настройка интерфейсов | ⬜ |
| DHCP-клиент | ⬜ |
| DNS-резолвинг | ⬜ |
| `ping`, `curl`, `wget` | ⬜ |
| Порт OpenSSH (`sshd`) | ⬜ |
| Базовый файрвол через `pfctl` | ⬜ |
| Синхронизация времени через NTP | ⬜ |

---

<a name="фаза-3"></a>

## Фаза 3 — Менеджер пакетов

**Цель:** Работающая экосистема пакетов.

**Критерий завершения:** `darion-pkg install python3` работает от начала до конца через удалённый репозиторий.

| Задача | Статус |
|--------|--------|
| Интеграция `pkgsrc` как основного менеджера пакетов | ⬜ |
| Начальная настройка `pkgin` (установщик бинарных пакетов) | ⬜ |
| Минимальный репозиторий пакетов (50+ пакетов) | ⬜ |
| Подпись и верификация пакетов | ⬜ |
| CLI-обёртка `darion-pkg` | ⬜ |
| Автоматическая сборка пакетов в CI | ⬜ |
| Установка пакетов в `~/Applications` без sudo | ⬜ |

---

<a name="фаза-4"></a>

## Фаза 4 — Безопасность

**Цель:** Безопасная по умолчанию система для всех пользователей.

**Критерий завершения:** Система проходит базовый аудит безопасности. Непривилегированные пользователи не могут изменять системные файлы или данные других пользователей.

| Задача | Статус |
|--------|--------|
| Аналог System Integrity Protection (SIP) | ⬜ |
| Политики MAC-фреймворка (TrustedBSD) | ⬜ |
| Профили песочницы для приложений | ⬜ |
| Цепочка безопасной загрузки (EFI → загрузчик → ядро) | ⬜ |
| Верификация подписи ядра | ⬜ |
| Модель привилегий на основе возможностей для сервисов | ⬜ |
| Журнал аудита безопасности через `audit(4)` | ⬜ |
| Полная изоляция пользователей (права на `/Users/<имя>`) | ⬜ |

---

<a name="фаза-5"></a>

## Фаза 5 — Рабочий стол

**Цель:** Графический рабочий стол для повседневного использования.

**Критерий завершения:** Система загружается в графическую сессию. Приложения запускаются из `~/Applications` двойным кликом.

| Задача | Статус |
|--------|--------|
| Сервер отображения (Wayland или минимальный X11) | ⬜ |
| UI-тулкит (GTK4 или собственный) | ⬜ |
| Оконный менеджер | ⬜ |
| Терминальный эмулятор | ⬜ |
| Файловый менеджер (с поддержкой `~/Applications`) | ⬜ |
| Текстовый редактор | ⬜ |
| Движок рендеринга шрифтов | ⬜ |
| Интеграция GPU-драйверов через I/O Kit | ⬜ |
| GUI-установщик приложений (перетаскивание в `~/Applications`) | ⬜ |

---

## Долгосрочное видение

- **Самосборка** — OpenDarion собирает сам себя
- **Несколько архитектур** — x86-64, ARM64, RISC-V
- **Контейнеры** — нативная поддержка OCI/Docker-совместимых контейнеров
- **Облачные образы** — загрузочные AMI, GCP и Azure образы
- **Магазин приложений** — браузер пакетов и графический установщик
