# Package Installer Script

This Bash script automates the process of checking and installing packages on a Debian-based system such as PopOS. It is particularly useful when setting up a new environment or ensuring that specific packages are installed.

## Usage

1. Open the script in a text editor.
2. Add the desired packages to the `packages` array by appending the package names, one per line.
   ```bash
   packages=(
       package1
       package2
       package3
   )
   ```
3. Save the changes.

4. Open a terminal and navigate to the directory containing the script.

5. Make the script executable.
   ```bash
   chmod +x pop_installer.sh
   ```

6. Run the script.
   ```bash
   ./pop_installer.sh
   ```

The script will check if each specified package is installed and install it if necessary. It will display informative messages, including whether the installation was successful or if any errors occurred.

## Important Note

- Ensure that you have the necessary privileges to install packages using `sudo`. The script uses `sudo` to update the package list and install packages.
- Customize the list of packages based on your specific requirements by adding or removing entries in the `packages` array.
- Review the script output to verify the success of each package installation.

Feel free to contribute or modify this script according to your needs. Happy scripting!
