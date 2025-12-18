# C++ Project Template

This project was generated using the **C++ Project Maker Script**.  
It provides a clean, modular structure with `src/`, `include/`, and `CMake` build support.

---

## 🚀 Getting Started

### 1️⃣ Build the project

```bash
mkdir build
cd build
cmake ..
make

The compiled executable will be located in:

build/bin/ProjectName

Run it with:

./bin/ProjectName

ProjectName can be change in CMakeLists.txt

🧱 Project Structure

ProjectName/
├── src/             # Source files (.cpp)
├── include/         # Header files (.h / .hpp)
├── build/           # Build output (not tracked in Git)
├── .gitignore       # Ignore compiled files and build folders
├── CMakeLists.txt   # CMake configuration
└── README.md        # Project documentation

🧩 Requirements

    C++17 or later

    CMake 3.10+

    GCC / Clang / MSVC

🐙 Uploading to GitHub

Follow these steps to upload your project to a new GitHub repository:
1️⃣ Initialize Git (if not already done)

git init

2️⃣ Add all project files

git add .

3️⃣ Commit the changes

git commit -m "Initial project setup"

4️⃣ Create a new repository on GitHub

    Go to https://github.com/new

    Enter your project name (same as this folder, e.g., ProjectName)

    Do NOT check “Add README” or “Add .gitignore” (you already have them)

    Click Create repository

5️⃣ Connect local repo to GitHub

Copy the commands GitHub gives you. They’ll look like this:

git remote add origin https://github.com/<your-username>/<repo-name>.git
git branch -M main
git push -u origin main

For example:

git remote add origin https://github.com/trusteddev/ProjectName.git
git branch -M main
git push -u origin main

🧹 Recommended .gitignore (already included)

/build/
/*.exe
*.o
*.obj
*.log

This ensures that build artifacts don’t clutter your Git history.
🧠 Notes

    Modify CMakeLists.txt to match your actual project name.

    Use git status often to track changes.

    For later updates, just:

    git add .
    git commit -m "Updated project"
    git push

💪 Credits

Created by TrustedDev’s C++ Project Maker Script (v2.0)
Maintained by developers who like clean builds and less setup time 😎


