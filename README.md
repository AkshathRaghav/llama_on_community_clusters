# Getting Started with gcc, NVIDIA Toolkit, and Llama on Gilbreth Cluster

Welcome to the quick start guide for setting up gcc, NVIDIA Toolkit, and running `llama.cpp` on the Gilbreth cluster. This guide is essential for users without sudo privileges, ensuring everyone can utilize these tools and libraries effectively.

## Why This Guide is Necessary

On the Gilbreth cluster, users often encounter a common challenge: the lack of sudo access. This limitation restricts the ability to install global packages, update system libraries, or configure system-wide settings, which are crucial steps for many computational tasks and software development processes.

To overcome this barrier, we provide a set of bash scripts that allow users to install and configure gcc and the NVIDIA Toolkit in a user-specific directory. This approach ensures that you can run `llama.cpp` and other applications relying on these tools without the need for administrative privileges.

### Before You Start

Ensure you have permission to execute scripts and access the Gilbreth cluster. Familiarity with basic terminal commands and the Linux environment will be helpful.


## 1. NVIDIA Toolkit Installation

The NVIDIA Toolkit includes libraries and tools essential for developing applications that leverage NVIDIA GPUs.

### Steps:

1. **Configure Installation Directory**:
   - Edit `nvidia-toolkit.sh` to specify your installation directory by changing the `TOOLKIT` variable.
   - The script ensures that `srcdir` and `objdir` are different directories. If you do wish to change these paths, make sure that they point to different locations. 

2. **Execute the Script**:
   ```bash
   bash nvidia-toolkit.sh
   ```
   Complete the setup by following the prompts.

### Toolkit Setup 

1. Type `accept` in the console.
<div align="center">
  <img src='./assets/1.png' alt="1" style="height: 50%;"/>
</div>

2. Use `ENTER` to select/deselect settings. Make sure the settings screen looks like the following image: 
<div align="center">
  <img src='./assets/2.png' alt="1" style="height: 50%;"/>
</div>

3. Hover over the `CUDA Toolkit 12.3` option, and press `A`. Deselect all of the settings here except `Install manpage documents...` 
<div align="center">
  <img src='./assets/3.png' alt="1" style="height: 50%;"/>
</div>


4. Hover over `Change Toolkit Install Path`. Hit `ENTER` and add the $TOOLKIT variable path here. 
<div align="center">
  <img src='./assets/4.png' alt="1" style="height: 50%;"/>
</div>

5. Finally, exit out into the main menu, hover over `Install` and hit `ENTER`. 


## 2. gcc Installation

gcc (GNU Compiler Collection) is a compiler system supporting various programming languages, crucial for software development and execution. Gilbreth, and other clusters like Negishi, use a version below <11.x.x>. llama.cpp requires a higher version. We will be using the latest version: <12.3.0>.

### Steps:

1. **Configure Installation Directory**:
   - Open `gcc.sh` in a text editor.
   - Locate the `ROOT_DIR` variable.
   - Set `ROOT_DIR` to your desired installation directory, e.g., `$HOME/`.

2. **Run the Script**:
   ```bash
   bash gcc.sh
   ```

If you face any issues, run `make -k distclean && make -k clean` to undo what was done by `./configure` and `make`. 

## 3. Running llama.cpp

With gcc and the NVIDIA Toolkit set up, you're now ready to compile and run `llama.cpp`.

### Steps:

0. **NOTE:** If you have run the above scripts in a previous session, then run `launch.sh` with the same paths you used in `gcc.sh` and `nvidia-toolkit.sh`. This sets the environment paths to look at our local installations. 

1. **Download the llama Script**: `llama.sh` is designed to compile and execute `llama.cpp` using the previously installed tools.
   
2. **Configure Installation Directory**:
   - Modify `llama.sh`, setting `LLAMA_DIR` to the directory where gcc and the NVIDIA Toolkit are installed.

3. **Launch the Script**:
   ```bash
   bash llama.sh
   ```
   This script compiles `llama.cpp` and runs it. Follow any instructions or prompts that appear.

