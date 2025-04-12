# 🤖 ROS Catkin Workspace (Noetic + Ubuntu 20.04)

This repository contains the source code and workspace structure for a custom ROS Noetic `catkin_ws` environment, originally built inside a Docker container based on Ubuntu 20.04.

---

## 📦 Included Packages

- `pepper_robot` – main control and config for SoftBank’s Pepper
- `pepper_simulation` – simulation logic, launch files, etc.
- `amiga_robot` – additional robot platform
- `pepper_meshes` – shared visual resources

These are stored under `src/` and were compiled using `catkin_make`.

---

## 🐳 Full Docker Image Available

To save you the hassle of rebuilding everything, a full Docker image backup (`ros-catkin-final`) is available as a `.tar.gz` file.

### 👉 [Download from GitHub Release](https://github.com/shamwow404/ros-catkin-workspace/releases)

### 🛠️ To Restore:

```bash
gunzip -c ros-catkin-final.tar.gz | docker load
docker run -it ros-catkin-final
```
This contains:

    -Ubuntu 20.04

    -ROS Noetic

    A-ll packages above, fully compiled

    -Preinstalled dev tools (Python, Terminator, etc.)
---

🚀 Quick Start (Building from Source)

If you want to rebuild manually (instead of using Docker):
```bash
# Clone this repo
git clone https://github.com/shamwow404/ros-catkin-workspace.git
cd ros-catkin-workspace

# Create and initialize catkin workspace
mkdir -p catkin_ws/src
cp -r src/ catkin_ws/
cd catkin_ws
source /opt/ros/noetic/setup.bash
catkin_make
```
---
📁 Project Structure
```
ros-catkin-workspace/
├── src/                  # ROS packages
│   ├── pepper_robot/
│   ├── pepper_simulation/
│   ├── amiga_robot/
│   └── pepper_meshes/
├── README.md
└── ros-catkin-final.tar.gz (release only)
```
---
🧠 Notes

    -The original workspace was developed and tested inside Docker.

    -Use the GitHub Release file if you want an identical, reproducible environment.
---
✨ Author:
Made with 💖 by Sham
